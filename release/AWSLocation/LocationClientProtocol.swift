// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Suite of geospatial services including Maps, Places, Routes, Tracking, and Geofencing
public protocol LocationClientProtocol {
    /// Creates an association between a geofence collection and a tracker resource. This allows the tracker resource to communicate location data to the linked geofence collection. You can associate up to five geofence collections to each tracker resource. Currently not supported — Cross-account configurations, such as creating associations between a tracker resource in one account and a geofence collection in another account.
    func associateTrackerConsumer(input: AssociateTrackerConsumerInput, completion: @escaping (ClientRuntime.SdkResult<AssociateTrackerConsumerOutputResponse, AssociateTrackerConsumerOutputError>) -> Void)
    /// Deletes the position history of one or more devices from a tracker resource.
    func batchDeleteDevicePositionHistory(input: BatchDeleteDevicePositionHistoryInput, completion: @escaping (ClientRuntime.SdkResult<BatchDeleteDevicePositionHistoryOutputResponse, BatchDeleteDevicePositionHistoryOutputError>) -> Void)
    /// Deletes a batch of geofences from a geofence collection. This operation deletes the resource permanently.
    func batchDeleteGeofence(input: BatchDeleteGeofenceInput, completion: @escaping (ClientRuntime.SdkResult<BatchDeleteGeofenceOutputResponse, BatchDeleteGeofenceOutputError>) -> Void)
    /// Evaluates device positions against the geofence geometries from a given geofence collection. This operation always returns an empty response because geofences are asynchronously evaluated. The evaluation determines if the device has entered or exited a geofenced area, and then publishes one of the following events to Amazon EventBridge:
    ///
    /// * ENTER if Amazon Location determines that the tracked device has entered a geofenced area.
    ///
    /// * EXIT if Amazon Location determines that the tracked device has exited a geofenced area.
    ///
    ///
    /// The last geofence that a device was observed within is tracked for 30 days after the most recent device position update.
    func batchEvaluateGeofences(input: BatchEvaluateGeofencesInput, completion: @escaping (ClientRuntime.SdkResult<BatchEvaluateGeofencesOutputResponse, BatchEvaluateGeofencesOutputError>) -> Void)
    /// Lists the latest device positions for requested devices.
    func batchGetDevicePosition(input: BatchGetDevicePositionInput, completion: @escaping (ClientRuntime.SdkResult<BatchGetDevicePositionOutputResponse, BatchGetDevicePositionOutputError>) -> Void)
    /// A batch request for storing geofence geometries into a given geofence collection, or updates the geometry of an existing geofence if a geofence ID is included in the request.
    func batchPutGeofence(input: BatchPutGeofenceInput, completion: @escaping (ClientRuntime.SdkResult<BatchPutGeofenceOutputResponse, BatchPutGeofenceOutputError>) -> Void)
    /// Uploads position update data for one or more devices to a tracker resource. Amazon Location uses the data when reporting the last known device position and position history. Only one position update is stored per sample time. Location data is sampled at a fixed rate of one position per 30-second interval and retained for 30 days before it's deleted.
    func batchUpdateDevicePosition(input: BatchUpdateDevicePositionInput, completion: @escaping (ClientRuntime.SdkResult<BatchUpdateDevicePositionOutputResponse, BatchUpdateDevicePositionOutputError>) -> Void)
    /// [Calculates a route](https://docs.aws.amazon.com/location/latest/developerguide/calculate-route.html) given the following required parameters: DeparturePostiton and DestinationPosition. Requires that you first [create a route calculator resource](https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html) By default, a request that doesn't specify a departure time uses the best time of day to travel with the best traffic conditions when calculating the route. Additional options include:
    ///
    /// * [Specifying a departure time](https://docs.aws.amazon.com/location/latest/developerguide/calculate-route.html#departure-time) using either DepartureTime or DepartureNow. This calculates a route based on predictive traffic data at the given time. You can't specify both DepartureTime and DepartureNow in a single request. Specifying both parameters returns an error message.
    ///
    /// * [Specifying a travel mode](https://docs.aws.amazon.com/location/latest/developerguide/calculate-route.html#travel-mode) using TravelMode. This lets you specify an additional route preference such as CarModeOptions if traveling by Car, or TruckModeOptions if traveling by Truck.
    func calculateRoute(input: CalculateRouteInput, completion: @escaping (ClientRuntime.SdkResult<CalculateRouteOutputResponse, CalculateRouteOutputError>) -> Void)
    /// Creates a geofence collection, which manages and stores geofences.
    func createGeofenceCollection(input: CreateGeofenceCollectionInput, completion: @escaping (ClientRuntime.SdkResult<CreateGeofenceCollectionOutputResponse, CreateGeofenceCollectionOutputError>) -> Void)
    /// Creates a map resource in your AWS account, which provides map tiles of different styles sourced from global location data providers.
    func createMap(input: CreateMapInput, completion: @escaping (ClientRuntime.SdkResult<CreateMapOutputResponse, CreateMapOutputError>) -> Void)
    /// Creates a place index resource in your AWS account, which supports functions with geospatial data sourced from your chosen data provider.
    func createPlaceIndex(input: CreatePlaceIndexInput, completion: @escaping (ClientRuntime.SdkResult<CreatePlaceIndexOutputResponse, CreatePlaceIndexOutputError>) -> Void)
    /// Creates a route calculator resource in your AWS account. You can send requests to a route calculator resource to estimate travel time, distance, and get directions. A route calculator sources traffic and road network data from your chosen data provider.
    func createRouteCalculator(input: CreateRouteCalculatorInput, completion: @escaping (ClientRuntime.SdkResult<CreateRouteCalculatorOutputResponse, CreateRouteCalculatorOutputError>) -> Void)
    /// Creates a tracker resource in your AWS account, which lets you retrieve current and historical location of devices.
    func createTracker(input: CreateTrackerInput, completion: @escaping (ClientRuntime.SdkResult<CreateTrackerOutputResponse, CreateTrackerOutputError>) -> Void)
    /// Deletes a geofence collection from your AWS account. This operation deletes the resource permanently. If the geofence collection is the target of a tracker resource, the devices will no longer be monitored.
    func deleteGeofenceCollection(input: DeleteGeofenceCollectionInput, completion: @escaping (ClientRuntime.SdkResult<DeleteGeofenceCollectionOutputResponse, DeleteGeofenceCollectionOutputError>) -> Void)
    /// Deletes a map resource from your AWS account. This operation deletes the resource permanently. If the map is being used in an application, the map may not render.
    func deleteMap(input: DeleteMapInput, completion: @escaping (ClientRuntime.SdkResult<DeleteMapOutputResponse, DeleteMapOutputError>) -> Void)
    /// Deletes a place index resource from your AWS account. This operation deletes the resource permanently.
    func deletePlaceIndex(input: DeletePlaceIndexInput, completion: @escaping (ClientRuntime.SdkResult<DeletePlaceIndexOutputResponse, DeletePlaceIndexOutputError>) -> Void)
    /// Deletes a route calculator resource from your AWS account. This operation deletes the resource permanently.
    func deleteRouteCalculator(input: DeleteRouteCalculatorInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRouteCalculatorOutputResponse, DeleteRouteCalculatorOutputError>) -> Void)
    /// Deletes a tracker resource from your AWS account. This operation deletes the resource permanently. If the tracker resource is in use, you may encounter an error. Make sure that the target resource isn't a dependency for your applications.
    func deleteTracker(input: DeleteTrackerInput, completion: @escaping (ClientRuntime.SdkResult<DeleteTrackerOutputResponse, DeleteTrackerOutputError>) -> Void)
    /// Retrieves the geofence collection details.
    func describeGeofenceCollection(input: DescribeGeofenceCollectionInput, completion: @escaping (ClientRuntime.SdkResult<DescribeGeofenceCollectionOutputResponse, DescribeGeofenceCollectionOutputError>) -> Void)
    /// Retrieves the map resource details.
    func describeMap(input: DescribeMapInput, completion: @escaping (ClientRuntime.SdkResult<DescribeMapOutputResponse, DescribeMapOutputError>) -> Void)
    /// Retrieves the place index resource details.
    func describePlaceIndex(input: DescribePlaceIndexInput, completion: @escaping (ClientRuntime.SdkResult<DescribePlaceIndexOutputResponse, DescribePlaceIndexOutputError>) -> Void)
    /// Retrieves the route calculator resource details.
    func describeRouteCalculator(input: DescribeRouteCalculatorInput, completion: @escaping (ClientRuntime.SdkResult<DescribeRouteCalculatorOutputResponse, DescribeRouteCalculatorOutputError>) -> Void)
    /// Retrieves the tracker resource details.
    func describeTracker(input: DescribeTrackerInput, completion: @escaping (ClientRuntime.SdkResult<DescribeTrackerOutputResponse, DescribeTrackerOutputError>) -> Void)
    /// Removes the association between a tracker resource and a geofence collection. Once you unlink a tracker resource from a geofence collection, the tracker positions will no longer be automatically evaluated against geofences.
    func disassociateTrackerConsumer(input: DisassociateTrackerConsumerInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateTrackerConsumerOutputResponse, DisassociateTrackerConsumerOutputError>) -> Void)
    /// Retrieves a device's most recent position according to its sample time. Device positions are deleted after 30 days.
    func getDevicePosition(input: GetDevicePositionInput, completion: @escaping (ClientRuntime.SdkResult<GetDevicePositionOutputResponse, GetDevicePositionOutputError>) -> Void)
    /// Retrieves the device position history from a tracker resource within a specified range of time. Device positions are deleted after 30 days.
    func getDevicePositionHistory(input: GetDevicePositionHistoryInput, completion: @escaping (ClientRuntime.SdkResult<GetDevicePositionHistoryOutputResponse, GetDevicePositionHistoryOutputError>) -> Void)
    /// Retrieves the geofence details from a geofence collection.
    func getGeofence(input: GetGeofenceInput, completion: @escaping (ClientRuntime.SdkResult<GetGeofenceOutputResponse, GetGeofenceOutputError>) -> Void)
    /// Retrieves glyphs used to display labels on a map.
    func getMapGlyphs(input: GetMapGlyphsInput, completion: @escaping (ClientRuntime.SdkResult<GetMapGlyphsOutputResponse, GetMapGlyphsOutputError>) -> Void)
    /// Retrieves the sprite sheet corresponding to a map resource. The sprite sheet is a PNG image paired with a JSON document describing the offsets of individual icons that will be displayed on a rendered map.
    func getMapSprites(input: GetMapSpritesInput, completion: @escaping (ClientRuntime.SdkResult<GetMapSpritesOutputResponse, GetMapSpritesOutputError>) -> Void)
    /// Retrieves the map style descriptor from a map resource. The style descriptor contains speciﬁcations on how features render on a map. For example, what data to display, what order to display the data in, and the style for the data. Style descriptors follow the Mapbox Style Specification.
    func getMapStyleDescriptor(input: GetMapStyleDescriptorInput, completion: @escaping (ClientRuntime.SdkResult<GetMapStyleDescriptorOutputResponse, GetMapStyleDescriptorOutputError>) -> Void)
    /// Retrieves a vector data tile from the map resource. Map tiles are used by clients to render a map. they're addressed using a grid arrangement with an X coordinate, Y coordinate, and Z (zoom) level. The origin (0, 0) is the top left of the map. Increasing the zoom level by 1 doubles both the X and Y dimensions, so a tile containing data for the entire world at (0/0/0) will be split into 4 tiles at zoom 1 (1/0/0, 1/0/1, 1/1/0, 1/1/1).
    func getMapTile(input: GetMapTileInput, completion: @escaping (ClientRuntime.SdkResult<GetMapTileOutputResponse, GetMapTileOutputError>) -> Void)
    /// A batch request to retrieve all device positions.
    func listDevicePositions(input: ListDevicePositionsInput, completion: @escaping (ClientRuntime.SdkResult<ListDevicePositionsOutputResponse, ListDevicePositionsOutputError>) -> Void)
    /// Lists geofence collections in your AWS account.
    func listGeofenceCollections(input: ListGeofenceCollectionsInput, completion: @escaping (ClientRuntime.SdkResult<ListGeofenceCollectionsOutputResponse, ListGeofenceCollectionsOutputError>) -> Void)
    /// Lists geofences stored in a given geofence collection.
    func listGeofences(input: ListGeofencesInput, completion: @escaping (ClientRuntime.SdkResult<ListGeofencesOutputResponse, ListGeofencesOutputError>) -> Void)
    /// Lists map resources in your AWS account.
    func listMaps(input: ListMapsInput, completion: @escaping (ClientRuntime.SdkResult<ListMapsOutputResponse, ListMapsOutputError>) -> Void)
    /// Lists place index resources in your AWS account.
    func listPlaceIndexes(input: ListPlaceIndexesInput, completion: @escaping (ClientRuntime.SdkResult<ListPlaceIndexesOutputResponse, ListPlaceIndexesOutputError>) -> Void)
    /// Lists route calculator resources in your AWS account.
    func listRouteCalculators(input: ListRouteCalculatorsInput, completion: @escaping (ClientRuntime.SdkResult<ListRouteCalculatorsOutputResponse, ListRouteCalculatorsOutputError>) -> Void)
    /// Returns a list of tags that are applied to the specified Amazon Location resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Lists geofence collections currently associated to the given tracker resource.
    func listTrackerConsumers(input: ListTrackerConsumersInput, completion: @escaping (ClientRuntime.SdkResult<ListTrackerConsumersOutputResponse, ListTrackerConsumersOutputError>) -> Void)
    /// Lists tracker resources in your AWS account.
    func listTrackers(input: ListTrackersInput, completion: @escaping (ClientRuntime.SdkResult<ListTrackersOutputResponse, ListTrackersOutputError>) -> Void)
    /// Stores a geofence geometry in a given geofence collection, or updates the geometry of an existing geofence if a geofence ID is included in the request.
    func putGeofence(input: PutGeofenceInput, completion: @escaping (ClientRuntime.SdkResult<PutGeofenceOutputResponse, PutGeofenceOutputError>) -> Void)
    /// Reverse geocodes a given coordinate and returns a legible address. Allows you to search for Places or points of interest near a given position.
    func searchPlaceIndexForPosition(input: SearchPlaceIndexForPositionInput, completion: @escaping (ClientRuntime.SdkResult<SearchPlaceIndexForPositionOutputResponse, SearchPlaceIndexForPositionOutputError>) -> Void)
    /// Geocodes free-form text, such as an address, name, city, or region to allow you to search for Places or points of interest. Includes the option to apply additional parameters to narrow your list of results. You can search for places near a given position using BiasPosition, or filter results within a bounding box using FilterBBox. Providing both parameters simultaneously returns an error.
    func searchPlaceIndexForText(input: SearchPlaceIndexForTextInput, completion: @escaping (ClientRuntime.SdkResult<SearchPlaceIndexForTextOutputResponse, SearchPlaceIndexForTextOutputError>) -> Void)
    /// Assigns one or more tags (key-value pairs) to the specified Amazon Location Service resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. You can use the TagResource operation with an Amazon Location Service resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the tags already associated with the resource. If you specify a tag key that's already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate up to 50 tags with a resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes one or more tags from the specified Amazon Location resource.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates the specified properties of a given geofence collection.
    func updateGeofenceCollection(input: UpdateGeofenceCollectionInput, completion: @escaping (ClientRuntime.SdkResult<UpdateGeofenceCollectionOutputResponse, UpdateGeofenceCollectionOutputError>) -> Void)
    /// Updates the specified properties of a given map resource.
    func updateMap(input: UpdateMapInput, completion: @escaping (ClientRuntime.SdkResult<UpdateMapOutputResponse, UpdateMapOutputError>) -> Void)
    /// Updates the specified properties of a given place index resource.
    func updatePlaceIndex(input: UpdatePlaceIndexInput, completion: @escaping (ClientRuntime.SdkResult<UpdatePlaceIndexOutputResponse, UpdatePlaceIndexOutputError>) -> Void)
    /// Updates the specified properties for a given route calculator resource.
    func updateRouteCalculator(input: UpdateRouteCalculatorInput, completion: @escaping (ClientRuntime.SdkResult<UpdateRouteCalculatorOutputResponse, UpdateRouteCalculatorOutputError>) -> Void)
    /// Updates the specified properties of a given tracker resource.
    func updateTracker(input: UpdateTrackerInput, completion: @escaping (ClientRuntime.SdkResult<UpdateTrackerOutputResponse, UpdateTrackerOutputError>) -> Void)
}

public enum LocationClientTypes {}