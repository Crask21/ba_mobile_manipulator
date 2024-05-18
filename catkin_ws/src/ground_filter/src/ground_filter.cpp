#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/filters/conditional_removal.h>

ros::Publisher pub;

void pointCloudCallback(const sensor_msgs::PointCloud2::Ptr &msg)
{
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZRGB>);
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_filtered(new pcl::PointCloud<pcl::PointXYZRGB>);
    pcl::fromROSMsg(*msg, *cloud);
    // You can access the point cloud data using cloud->points, cloud->width, cloud->height, etc.

    // build the condition
    pcl::ConditionAnd<pcl::PointXYZRGB>::Ptr range_cond(new pcl::ConditionAnd<pcl::PointXYZRGB>());
    range_cond->addComparison(pcl::FieldComparison<pcl::PointXYZRGB>::ConstPtr(new pcl::FieldComparison<pcl::PointXYZRGB>("y", pcl::ComparisonOps::LT, 0.35)));
    // build the filter
    pcl::ConditionalRemoval<pcl::PointXYZRGB> condrem;
    condrem.setCondition(range_cond);
    condrem.setInputCloud(cloud);
    // apply filter
    condrem.filter(*cloud);

    // Publish the filtered point cloud data
    sensor_msgs::PointCloud2 filtered_msg;
    pcl::toROSMsg(*cloud, filtered_msg);
    pub.publish(filtered_msg);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "ground_filter_node");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("/robot/front_rgbd_camera/depth/points", 1, pointCloudCallback);
    pub = nh.advertise<sensor_msgs::PointCloud2>("/robot/filtered_pc", 1);
    ros::spin();
    return 0;
}