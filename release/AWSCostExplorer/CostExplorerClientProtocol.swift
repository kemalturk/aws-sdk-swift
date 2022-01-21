// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// You can use the Cost Explorer API to programmatically query your cost and usage data. You can query for aggregated data such as total monthly costs or total daily usage. You can also query for granular data. This might include the number of daily write operations for Amazon DynamoDB database tables in your production environment. Service Endpoint The Cost Explorer API provides the following endpoint:
///
/// * https://ce.us-east-1.amazonaws.com
///
///
/// For information about the costs that are associated with the Cost Explorer API, see [Amazon Web Services Cost Management Pricing](http://aws.amazon.com/aws-cost-management/pricing/).
public protocol CostExplorerClientProtocol {
    /// Creates a new cost anomaly detection monitor with the requested type and monitor specification.
    func createAnomalyMonitor(input: CreateAnomalyMonitorInput, completion: @escaping (ClientRuntime.SdkResult<CreateAnomalyMonitorOutputResponse, CreateAnomalyMonitorOutputError>) -> Void)
    /// Adds a subscription to a cost anomaly detection monitor. You can use each subscription to define subscribers with email or SNS notifications. Email subscribers can set a dollar threshold and a time frequency for receiving notifications.
    func createAnomalySubscription(input: CreateAnomalySubscriptionInput, completion: @escaping (ClientRuntime.SdkResult<CreateAnomalySubscriptionOutputResponse, CreateAnomalySubscriptionOutputError>) -> Void)
    /// Creates a new Cost Category with the requested name and rules.
    func createCostCategoryDefinition(input: CreateCostCategoryDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<CreateCostCategoryDefinitionOutputResponse, CreateCostCategoryDefinitionOutputError>) -> Void)
    /// Deletes a cost anomaly monitor.
    func deleteAnomalyMonitor(input: DeleteAnomalyMonitorInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAnomalyMonitorOutputResponse, DeleteAnomalyMonitorOutputError>) -> Void)
    /// Deletes a cost anomaly subscription.
    func deleteAnomalySubscription(input: DeleteAnomalySubscriptionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAnomalySubscriptionOutputResponse, DeleteAnomalySubscriptionOutputError>) -> Void)
    /// Deletes a Cost Category. Expenses from this month going forward will no longer be categorized with this Cost Category.
    func deleteCostCategoryDefinition(input: DeleteCostCategoryDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteCostCategoryDefinitionOutputResponse, DeleteCostCategoryDefinitionOutputError>) -> Void)
    /// Returns the name, ARN, rules, definition, and effective dates of a Cost Category that's defined in the account. You have the option to use EffectiveOn to return a Cost Category that is active on a specific date. If there is no EffectiveOn specified, you’ll see a Cost Category that is effective on the current date. If Cost Category is still effective, EffectiveEnd is omitted in the response.
    func describeCostCategoryDefinition(input: DescribeCostCategoryDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<DescribeCostCategoryDefinitionOutputResponse, DescribeCostCategoryDefinitionOutputError>) -> Void)
    /// Retrieves all of the cost anomalies detected on your account during the time period that's specified by the DateInterval object.
    func getAnomalies(input: GetAnomaliesInput, completion: @escaping (ClientRuntime.SdkResult<GetAnomaliesOutputResponse, GetAnomaliesOutputError>) -> Void)
    /// Retrieves the cost anomaly monitor definitions for your account. You can filter using a list of cost anomaly monitor Amazon Resource Names (ARNs).
    func getAnomalyMonitors(input: GetAnomalyMonitorsInput, completion: @escaping (ClientRuntime.SdkResult<GetAnomalyMonitorsOutputResponse, GetAnomalyMonitorsOutputError>) -> Void)
    /// Retrieves the cost anomaly subscription objects for your account. You can filter using a list of cost anomaly monitor Amazon Resource Names (ARNs).
    func getAnomalySubscriptions(input: GetAnomalySubscriptionsInput, completion: @escaping (ClientRuntime.SdkResult<GetAnomalySubscriptionsOutputResponse, GetAnomalySubscriptionsOutputError>) -> Void)
    /// Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric that you want the request to return. For example, you can specify BlendedCosts or UsageQuantity. You can also filter and group your data by various dimensions, such as SERVICE or AZ, in a specific time range. For a complete list of valid dimensions, see the [GetDimensionValues](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html) operation. Management account in an organization in Organizations have access to all member accounts. For information about filter limitations, see [Quotas and restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html) in the Billing and Cost Management User Guide.
    func getCostAndUsage(input: GetCostAndUsageInput, completion: @escaping (ClientRuntime.SdkResult<GetCostAndUsageOutputResponse, GetCostAndUsageOutputError>) -> Void)
    /// Retrieves cost and usage metrics with resources for your account. You can specify which cost and usage-related metric, such as BlendedCosts or UsageQuantity, that you want the request to return. You can also filter and group your data by various dimensions, such as SERVICE or AZ, in a specific time range. For a complete list of valid dimensions, see the [GetDimensionValues](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html) operation. Management account in an organization in Organizations have access to all member accounts. This API is currently available for the Amazon Elastic Compute Cloud – Compute service only. This is an opt-in only feature. You can enable this feature from the Cost Explorer Settings page. For information on how to access the Settings page, see [Controlling Access for Cost Explorer](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html) in the Billing and Cost Management User Guide.
    func getCostAndUsageWithResources(input: GetCostAndUsageWithResourcesInput, completion: @escaping (ClientRuntime.SdkResult<GetCostAndUsageWithResourcesOutputResponse, GetCostAndUsageWithResourcesOutputError>) -> Void)
    /// Retrieves an array of Cost Category names and values incurred cost. If some Cost Category names and values are not associated with any cost, they will not be returned by this API.
    func getCostCategories(input: GetCostCategoriesInput, completion: @escaping (ClientRuntime.SdkResult<GetCostCategoriesOutputResponse, GetCostCategoriesOutputError>) -> Void)
    /// Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs.
    func getCostForecast(input: GetCostForecastInput, completion: @escaping (ClientRuntime.SdkResult<GetCostForecastOutputResponse, GetCostForecastOutputError>) -> Void)
    /// Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string.
    func getDimensionValues(input: GetDimensionValuesInput, completion: @escaping (ClientRuntime.SdkResult<GetDimensionValuesOutputResponse, GetDimensionValuesOutputError>) -> Void)
    /// Retrieves the reservation coverage for your account. This enables you to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift usage is covered by a reservation. An organization's management account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data about reservation usage by the following dimensions:
    ///
    /// * AZ
    ///
    /// * CACHE_ENGINE
    ///
    /// * DATABASE_ENGINE
    ///
    /// * DEPLOYMENT_OPTION
    ///
    /// * INSTANCE_TYPE
    ///
    /// * LINKED_ACCOUNT
    ///
    /// * OPERATING_SYSTEM
    ///
    /// * PLATFORM
    ///
    /// * REGION
    ///
    /// * SERVICE
    ///
    /// * TAG
    ///
    /// * TENANCY
    ///
    ///
    /// To determine valid values for a dimension, use the GetDimensionValues operation.
    func getReservationCoverage(input: GetReservationCoverageInput, completion: @escaping (ClientRuntime.SdkResult<GetReservationCoverageOutputResponse, GetReservationCoverageOutputError>) -> Void)
    /// Gets recommendations for which reservations to purchase. These recommendations could help you reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing. Amazon Web Services generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage into categories that are eligible for a reservation. After Amazon Web Services has these categories, it simulates every combination of reservations in each category of usage to identify the best number of each type of RI to purchase to maximize your estimated savings. For example, Amazon Web Services automatically aggregates your Amazon EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. Amazon Web Services recommends the smallest size instance in an instance family. This makes it easier to purchase a size-flexible RI. Amazon Web Services also shows the equal number of normalized units so that you can purchase any instance size that you want. For this example, your RI recommendation would be for c4.large because that is the smallest size instance in the c4 instance family.
    func getReservationPurchaseRecommendation(input: GetReservationPurchaseRecommendationInput, completion: @escaping (ClientRuntime.SdkResult<GetReservationPurchaseRecommendationOutputResponse, GetReservationPurchaseRecommendationOutputError>) -> Void)
    /// Retrieves the reservation utilization for your account. Management account in an organization have access to member accounts. You can filter data by dimensions in a time period. You can use GetDimensionValues to determine the possible dimension values. Currently, you can group only by SUBSCRIPTION_ID.
    func getReservationUtilization(input: GetReservationUtilizationInput, completion: @escaping (ClientRuntime.SdkResult<GetReservationUtilizationOutputResponse, GetReservationUtilizationOutputError>) -> Void)
    /// Creates recommendations that help you save cost by identifying idle and underutilized Amazon EC2 instances. Recommendations are generated to either downsize or terminate instances, along with providing savings detail and metrics. For details on calculation and function, see [Optimizing Your Cost with Rightsizing Recommendations](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html) in the Billing and Cost Management User Guide.
    func getRightsizingRecommendation(input: GetRightsizingRecommendationInput, completion: @escaping (ClientRuntime.SdkResult<GetRightsizingRecommendationOutputResponse, GetRightsizingRecommendationOutputError>) -> Void)
    /// Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s management account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data for Savings Plans usage with the following dimensions:
    ///
    /// * LINKED_ACCOUNT
    ///
    /// * REGION
    ///
    /// * SERVICE
    ///
    /// * INSTANCE_FAMILY
    ///
    ///
    /// To determine valid values for a dimension, use the GetDimensionValues operation.
    func getSavingsPlansCoverage(input: GetSavingsPlansCoverageInput, completion: @escaping (ClientRuntime.SdkResult<GetSavingsPlansCoverageOutputResponse, GetSavingsPlansCoverageOutputError>) -> Void)
    /// Retrieves your request parameters, Savings Plan Recommendations Summary and Details.
    func getSavingsPlansPurchaseRecommendation(input: GetSavingsPlansPurchaseRecommendationInput, completion: @escaping (ClientRuntime.SdkResult<GetSavingsPlansPurchaseRecommendationOutputResponse, GetSavingsPlansPurchaseRecommendationOutputError>) -> Void)
    /// Retrieves the Savings Plans utilization for your account across date ranges with daily or monthly granularity. Management account in an organization have access to member accounts. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values. You cannot group by any dimension values for GetSavingsPlansUtilization.
    func getSavingsPlansUtilization(input: GetSavingsPlansUtilizationInput, completion: @escaping (ClientRuntime.SdkResult<GetSavingsPlansUtilizationOutputResponse, GetSavingsPlansUtilizationOutputError>) -> Void)
    /// Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to GetSavingsPlanUtilization, but you have the option to make multiple calls to GetSavingsPlanUtilizationDetails by providing individual dates. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values. GetSavingsPlanUtilizationDetails internally groups data by SavingsPlansArn.
    func getSavingsPlansUtilizationDetails(input: GetSavingsPlansUtilizationDetailsInput, completion: @escaping (ClientRuntime.SdkResult<GetSavingsPlansUtilizationDetailsOutputResponse, GetSavingsPlansUtilizationDetailsOutputError>) -> Void)
    /// Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string.
    func getTags(input: GetTagsInput, completion: @escaping (ClientRuntime.SdkResult<GetTagsOutputResponse, GetTagsOutputError>) -> Void)
    /// Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that you select, based on your past usage.
    func getUsageForecast(input: GetUsageForecastInput, completion: @escaping (ClientRuntime.SdkResult<GetUsageForecastOutputResponse, GetUsageForecastOutputError>) -> Void)
    /// Returns the name, ARN, NumberOfRules and effective dates of all Cost Categories defined in the account. You have the option to use EffectiveOn to return a list of Cost Categories that were active on a specific date. If there is no EffectiveOn specified, you’ll see Cost Categories that are effective on the current date. If Cost Category is still effective, EffectiveEnd is omitted in the response. ListCostCategoryDefinitions supports pagination. The request can have a MaxResults range up to 100.
    func listCostCategoryDefinitions(input: ListCostCategoryDefinitionsInput, completion: @escaping (ClientRuntime.SdkResult<ListCostCategoryDefinitionsOutputResponse, ListCostCategoryDefinitionsOutputError>) -> Void)
    /// Modifies the feedback property of a given cost anomaly.
    func provideAnomalyFeedback(input: ProvideAnomalyFeedbackInput, completion: @escaping (ClientRuntime.SdkResult<ProvideAnomalyFeedbackOutputResponse, ProvideAnomalyFeedbackOutputError>) -> Void)
    /// Updates an existing cost anomaly monitor. The changes made are applied going forward, and doesn'tt change anomalies detected in the past.
    func updateAnomalyMonitor(input: UpdateAnomalyMonitorInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAnomalyMonitorOutputResponse, UpdateAnomalyMonitorOutputError>) -> Void)
    /// Updates an existing cost anomaly monitor subscription.
    func updateAnomalySubscription(input: UpdateAnomalySubscriptionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAnomalySubscriptionOutputResponse, UpdateAnomalySubscriptionOutputError>) -> Void)
    /// Updates an existing Cost Category. Changes made to the Cost Category rules will be used to categorize the current month’s expenses and future expenses. This won’t change categorization for the previous months.
    func updateCostCategoryDefinition(input: UpdateCostCategoryDefinitionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateCostCategoryDefinitionOutputResponse, UpdateCostCategoryDefinitionOutputError>) -> Void)
}

public enum CostExplorerClientTypes {}
