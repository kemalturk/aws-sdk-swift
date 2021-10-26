// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension AppMeshClient {
    /// Creates a gateway route.
    ///          A gateway route is attached to a virtual gateway and routes traffic to an existing
    ///          virtual service. If a route matches a request, it can distribute traffic to a target
    ///          virtual service.
    ///          For more information about gateway routes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/gateway-routes.html">Gateway routes.
    func createGatewayRoute(input: CreateGatewayRouteInput) async throws -> CreateGatewayRouteOutputResponse
    {
        typealias createGatewayRouteContinuation = CheckedContinuation<CreateGatewayRouteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createGatewayRouteContinuation) in
            createGatewayRoute(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a service mesh.
    ///           A service mesh is a logical boundary for network traffic between services that are
    ///          represented by resources within the mesh. After you create your service mesh, you can
    ///          create virtual services, virtual nodes, virtual routers, and routes to distribute traffic
    ///          between the applications in your mesh.
    ///          For more information about service meshes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/meshes.html">Service meshes.
    func createMesh(input: CreateMeshInput) async throws -> CreateMeshOutputResponse
    {
        typealias createMeshContinuation = CheckedContinuation<CreateMeshOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createMeshContinuation) in
            createMesh(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a route that is associated with a virtual router.
    ///           You can route several different protocols and define a retry policy for a route.
    ///          Traffic can be routed to one or more virtual nodes.
    ///          For more information about routes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/routes.html">Routes.
    func createRoute(input: CreateRouteInput) async throws -> CreateRouteOutputResponse
    {
        typealias createRouteContinuation = CheckedContinuation<CreateRouteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createRouteContinuation) in
            createRoute(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a virtual gateway.
    ///          A virtual gateway allows resources outside your mesh to communicate to resources that
    ///          are inside your mesh. The virtual gateway represents an Envoy proxy running in an Amazon ECS
    ///          task, in a Kubernetes service, or on an Amazon EC2 instance. Unlike a virtual node, which
    ///          represents an Envoy running with an application, a virtual gateway represents Envoy
    ///          deployed by itself.
    ///          For more information about virtual gateways, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_gateways.html">Virtual gateways.
    func createVirtualGateway(input: CreateVirtualGatewayInput) async throws -> CreateVirtualGatewayOutputResponse
    {
        typealias createVirtualGatewayContinuation = CheckedContinuation<CreateVirtualGatewayOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createVirtualGatewayContinuation) in
            createVirtualGateway(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a virtual node within a service mesh.
    ///           A virtual node acts as a logical pointer to a particular task group, such as an Amazon ECS
    ///          service or a Kubernetes deployment. When you create a virtual node, you can specify the
    ///          service discovery information for your task group, and whether the proxy running in a task
    ///          group will communicate with other proxies using Transport Layer Security (TLS).
    ///          You define a listener for any inbound traffic that your virtual node
    ///          expects. Any virtual service that your virtual node expects to communicate to is specified
    ///          as a backend.
    ///          The response metadata for your new virtual node contains the arn that is
    ///          associated with the virtual node. Set this value to the full ARN; for example,
    ///             arn:aws:appmesh:us-west-2:123456789012:myMesh/default/virtualNode/myApp)
    ///          as the APPMESH_RESOURCE_ARN environment variable for your task group's Envoy
    ///          proxy container in your task definition or pod spec. This is then mapped to the
    ///             node.id and node.cluster Envoy parameters.
    ///
    ///             By default, App Mesh uses the name of the resource you specified in
    ///                APPMESH_RESOURCE_ARN when Envoy is referring to itself in metrics and
    ///             traces. You can override this behavior by setting the
    ///                APPMESH_RESOURCE_CLUSTER environment variable with your own name.
    ///
    ///          For more information about virtual nodes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_nodes.html">Virtual nodes. You must be using 1.15.0 or later of the Envoy image when
    ///          setting these variables. For more information aboutApp Mesh Envoy variables, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/envoy.html">Envoy image in
    ///          the AWS App Mesh User Guide.
    func createVirtualNode(input: CreateVirtualNodeInput) async throws -> CreateVirtualNodeOutputResponse
    {
        typealias createVirtualNodeContinuation = CheckedContinuation<CreateVirtualNodeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createVirtualNodeContinuation) in
            createVirtualNode(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a virtual router within a service mesh.
    ///          Specify a listener for any inbound traffic that your virtual router
    ///          receives. Create a virtual router for each protocol and port that you need to route.
    ///          Virtual routers handle traffic for one or more virtual services within your mesh. After you
    ///          create your virtual router, create and associate routes for your virtual router that direct
    ///          incoming requests to different virtual nodes.
    ///          For more information about virtual routers, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_routers.html">Virtual routers.
    func createVirtualRouter(input: CreateVirtualRouterInput) async throws -> CreateVirtualRouterOutputResponse
    {
        typealias createVirtualRouterContinuation = CheckedContinuation<CreateVirtualRouterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createVirtualRouterContinuation) in
            createVirtualRouter(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a virtual service within a service mesh.
    ///          A virtual service is an abstraction of a real service that is provided by a virtual node
    ///          directly or indirectly by means of a virtual router. Dependent services call your virtual
    ///          service by its virtualServiceName, and those requests are routed to the
    ///          virtual node or virtual router that is specified as the provider for the virtual
    ///          service.
    ///          For more information about virtual services, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_services.html">Virtual services.
    func createVirtualService(input: CreateVirtualServiceInput) async throws -> CreateVirtualServiceOutputResponse
    {
        typealias createVirtualServiceContinuation = CheckedContinuation<CreateVirtualServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createVirtualServiceContinuation) in
            createVirtualService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing gateway route.
    func deleteGatewayRoute(input: DeleteGatewayRouteInput) async throws -> DeleteGatewayRouteOutputResponse
    {
        typealias deleteGatewayRouteContinuation = CheckedContinuation<DeleteGatewayRouteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteGatewayRouteContinuation) in
            deleteGatewayRoute(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing service mesh.
    ///          You must delete all resources (virtual services, routes, virtual routers, and virtual
    ///          nodes) in the service mesh before you can delete the mesh itself.
    func deleteMesh(input: DeleteMeshInput) async throws -> DeleteMeshOutputResponse
    {
        typealias deleteMeshContinuation = CheckedContinuation<DeleteMeshOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteMeshContinuation) in
            deleteMesh(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing route.
    func deleteRoute(input: DeleteRouteInput) async throws -> DeleteRouteOutputResponse
    {
        typealias deleteRouteContinuation = CheckedContinuation<DeleteRouteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteRouteContinuation) in
            deleteRoute(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing virtual gateway. You cannot delete a virtual gateway if any gateway
    ///          routes are associated to it.
    func deleteVirtualGateway(input: DeleteVirtualGatewayInput) async throws -> DeleteVirtualGatewayOutputResponse
    {
        typealias deleteVirtualGatewayContinuation = CheckedContinuation<DeleteVirtualGatewayOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteVirtualGatewayContinuation) in
            deleteVirtualGateway(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing virtual node.
    ///          You must delete any virtual services that list a virtual node as a service provider
    ///          before you can delete the virtual node itself.
    func deleteVirtualNode(input: DeleteVirtualNodeInput) async throws -> DeleteVirtualNodeOutputResponse
    {
        typealias deleteVirtualNodeContinuation = CheckedContinuation<DeleteVirtualNodeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteVirtualNodeContinuation) in
            deleteVirtualNode(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing virtual router.
    ///          You must delete any routes associated with the virtual router before you can delete the
    ///          router itself.
    func deleteVirtualRouter(input: DeleteVirtualRouterInput) async throws -> DeleteVirtualRouterOutputResponse
    {
        typealias deleteVirtualRouterContinuation = CheckedContinuation<DeleteVirtualRouterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteVirtualRouterContinuation) in
            deleteVirtualRouter(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing virtual service.
    func deleteVirtualService(input: DeleteVirtualServiceInput) async throws -> DeleteVirtualServiceOutputResponse
    {
        typealias deleteVirtualServiceContinuation = CheckedContinuation<DeleteVirtualServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteVirtualServiceContinuation) in
            deleteVirtualService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes an existing gateway route.
    func describeGatewayRoute(input: DescribeGatewayRouteInput) async throws -> DescribeGatewayRouteOutputResponse
    {
        typealias describeGatewayRouteContinuation = CheckedContinuation<DescribeGatewayRouteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeGatewayRouteContinuation) in
            describeGatewayRoute(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes an existing service mesh.
    func describeMesh(input: DescribeMeshInput) async throws -> DescribeMeshOutputResponse
    {
        typealias describeMeshContinuation = CheckedContinuation<DescribeMeshOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeMeshContinuation) in
            describeMesh(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes an existing route.
    func describeRoute(input: DescribeRouteInput) async throws -> DescribeRouteOutputResponse
    {
        typealias describeRouteContinuation = CheckedContinuation<DescribeRouteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeRouteContinuation) in
            describeRoute(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes an existing virtual gateway.
    func describeVirtualGateway(input: DescribeVirtualGatewayInput) async throws -> DescribeVirtualGatewayOutputResponse
    {
        typealias describeVirtualGatewayContinuation = CheckedContinuation<DescribeVirtualGatewayOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeVirtualGatewayContinuation) in
            describeVirtualGateway(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes an existing virtual node.
    func describeVirtualNode(input: DescribeVirtualNodeInput) async throws -> DescribeVirtualNodeOutputResponse
    {
        typealias describeVirtualNodeContinuation = CheckedContinuation<DescribeVirtualNodeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeVirtualNodeContinuation) in
            describeVirtualNode(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes an existing virtual router.
    func describeVirtualRouter(input: DescribeVirtualRouterInput) async throws -> DescribeVirtualRouterOutputResponse
    {
        typealias describeVirtualRouterContinuation = CheckedContinuation<DescribeVirtualRouterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeVirtualRouterContinuation) in
            describeVirtualRouter(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes an existing virtual service.
    func describeVirtualService(input: DescribeVirtualServiceInput) async throws -> DescribeVirtualServiceOutputResponse
    {
        typealias describeVirtualServiceContinuation = CheckedContinuation<DescribeVirtualServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeVirtualServiceContinuation) in
            describeVirtualService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of existing gateway routes that are associated to a virtual
    ///          gateway.
    func listGatewayRoutes(input: ListGatewayRoutesInput) async throws -> ListGatewayRoutesOutputResponse
    {
        typealias listGatewayRoutesContinuation = CheckedContinuation<ListGatewayRoutesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listGatewayRoutesContinuation) in
            listGatewayRoutes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of existing service meshes.
    func listMeshes(input: ListMeshesInput) async throws -> ListMeshesOutputResponse
    {
        typealias listMeshesContinuation = CheckedContinuation<ListMeshesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listMeshesContinuation) in
            listMeshes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of existing routes in a service mesh.
    func listRoutes(input: ListRoutesInput) async throws -> ListRoutesOutputResponse
    {
        typealias listRoutesContinuation = CheckedContinuation<ListRoutesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listRoutesContinuation) in
            listRoutes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List the tags for an App Mesh resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of existing virtual gateways in a service mesh.
    func listVirtualGateways(input: ListVirtualGatewaysInput) async throws -> ListVirtualGatewaysOutputResponse
    {
        typealias listVirtualGatewaysContinuation = CheckedContinuation<ListVirtualGatewaysOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listVirtualGatewaysContinuation) in
            listVirtualGateways(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of existing virtual nodes.
    func listVirtualNodes(input: ListVirtualNodesInput) async throws -> ListVirtualNodesOutputResponse
    {
        typealias listVirtualNodesContinuation = CheckedContinuation<ListVirtualNodesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listVirtualNodesContinuation) in
            listVirtualNodes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of existing virtual routers in a service mesh.
    func listVirtualRouters(input: ListVirtualRoutersInput) async throws -> ListVirtualRoutersOutputResponse
    {
        typealias listVirtualRoutersContinuation = CheckedContinuation<ListVirtualRoutersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listVirtualRoutersContinuation) in
            listVirtualRouters(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of existing virtual services in a service mesh.
    func listVirtualServices(input: ListVirtualServicesInput) async throws -> ListVirtualServicesOutputResponse
    {
        typealias listVirtualServicesContinuation = CheckedContinuation<ListVirtualServicesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listVirtualServicesContinuation) in
            listVirtualServices(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Associates the specified tags to a resource with the specified resourceArn.
    ///          If existing tags on a resource aren't specified in the request parameters, they aren't
    ///          changed. When a resource is deleted, the tags associated with that resource are also
    ///          deleted.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes specified tags from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing gateway route that is associated to a specified virtual gateway in a
    ///          service mesh.
    func updateGatewayRoute(input: UpdateGatewayRouteInput) async throws -> UpdateGatewayRouteOutputResponse
    {
        typealias updateGatewayRouteContinuation = CheckedContinuation<UpdateGatewayRouteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateGatewayRouteContinuation) in
            updateGatewayRoute(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing service mesh.
    func updateMesh(input: UpdateMeshInput) async throws -> UpdateMeshOutputResponse
    {
        typealias updateMeshContinuation = CheckedContinuation<UpdateMeshOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateMeshContinuation) in
            updateMesh(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing route for a specified service mesh and virtual router.
    func updateRoute(input: UpdateRouteInput) async throws -> UpdateRouteOutputResponse
    {
        typealias updateRouteContinuation = CheckedContinuation<UpdateRouteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateRouteContinuation) in
            updateRoute(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing virtual gateway in a specified service mesh.
    func updateVirtualGateway(input: UpdateVirtualGatewayInput) async throws -> UpdateVirtualGatewayOutputResponse
    {
        typealias updateVirtualGatewayContinuation = CheckedContinuation<UpdateVirtualGatewayOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateVirtualGatewayContinuation) in
            updateVirtualGateway(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing virtual node in a specified service mesh.
    func updateVirtualNode(input: UpdateVirtualNodeInput) async throws -> UpdateVirtualNodeOutputResponse
    {
        typealias updateVirtualNodeContinuation = CheckedContinuation<UpdateVirtualNodeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateVirtualNodeContinuation) in
            updateVirtualNode(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing virtual router in a specified service mesh.
    func updateVirtualRouter(input: UpdateVirtualRouterInput) async throws -> UpdateVirtualRouterOutputResponse
    {
        typealias updateVirtualRouterContinuation = CheckedContinuation<UpdateVirtualRouterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateVirtualRouterContinuation) in
            updateVirtualRouter(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing virtual service in a specified service mesh.
    func updateVirtualService(input: UpdateVirtualServiceInput) async throws -> UpdateVirtualServiceOutputResponse
    {
        typealias updateVirtualServiceContinuation = CheckedContinuation<UpdateVirtualServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateVirtualServiceContinuation) in
            updateVirtualService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif
