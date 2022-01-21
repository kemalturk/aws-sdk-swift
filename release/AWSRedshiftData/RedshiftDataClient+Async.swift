// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension RedshiftDataClient {
    /// Runs one or more SQL statements, which can be data manipulation language (DML) or data definition language (DDL). Depending on the authorization method, use one of the following combinations of request parameters:
    ///
    /// * Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret. When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name.
    ///
    /// * Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name. Also, permission to call the redshift:GetClusterCredentials operation is required. When connecting to a serverless endpoint, specify the database name.
    func batchExecuteStatement(input: BatchExecuteStatementInput) async throws -> BatchExecuteStatementOutputResponse
    {
        typealias batchExecuteStatementContinuation = CheckedContinuation<BatchExecuteStatementOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchExecuteStatementContinuation) in
            batchExecuteStatement(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Cancels a running query. To be canceled, a query must be running.
    func cancelStatement(input: CancelStatementInput) async throws -> CancelStatementOutputResponse
    {
        typealias cancelStatementContinuation = CheckedContinuation<CancelStatementOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelStatementContinuation) in
            cancelStatement(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the details about a specific instance when a query was run by the Amazon Redshift Data API. The information includes when the query started, when it finished, the query status, the number of rows returned, and the SQL statement.
    func describeStatement(input: DescribeStatementInput) async throws -> DescribeStatementOutputResponse
    {
        typealias describeStatementContinuation = CheckedContinuation<DescribeStatementOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeStatementContinuation) in
            describeStatement(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the detailed information about a table from metadata in the cluster. The information includes its columns. A token is returned to page through the column list. Depending on the authorization method, use one of the following combinations of request parameters:
    ///
    /// * Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret. When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name.
    ///
    /// * Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name. Also, permission to call the redshift:GetClusterCredentials operation is required. When connecting to a serverless endpoint, specify the database name.
    func describeTable(input: DescribeTableInput) async throws -> DescribeTableOutputResponse
    {
        typealias describeTableContinuation = CheckedContinuation<DescribeTableOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeTableContinuation) in
            describeTable(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Runs an SQL statement, which can be data manipulation language (DML) or data definition language (DDL). This statement must be a single SQL statement. Depending on the authorization method, use one of the following combinations of request parameters:
    ///
    /// * Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret. When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name.
    ///
    /// * Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name. Also, permission to call the redshift:GetClusterCredentials operation is required. When connecting to a serverless endpoint, specify the database name.
    func executeStatement(input: ExecuteStatementInput) async throws -> ExecuteStatementOutputResponse
    {
        typealias executeStatementContinuation = CheckedContinuation<ExecuteStatementOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: executeStatementContinuation) in
            executeStatement(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Fetches the temporarily cached result of an SQL statement. A token is returned to page through the statement results.
    func getStatementResult(input: GetStatementResultInput) async throws -> GetStatementResultOutputResponse
    {
        typealias getStatementResultContinuation = CheckedContinuation<GetStatementResultOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getStatementResultContinuation) in
            getStatementResult(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List the databases in a cluster. A token is returned to page through the database list. Depending on the authorization method, use one of the following combinations of request parameters:
    ///
    /// * Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret. When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name.
    ///
    /// * Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name. Also, permission to call the redshift:GetClusterCredentials operation is required. When connecting to a serverless endpoint, specify the database name.
    func listDatabases(input: ListDatabasesInput) async throws -> ListDatabasesOutputResponse
    {
        typealias listDatabasesContinuation = CheckedContinuation<ListDatabasesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDatabasesContinuation) in
            listDatabases(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the schemas in a database. A token is returned to page through the schema list. Depending on the authorization method, use one of the following combinations of request parameters:
    ///
    /// * Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret. When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name.
    ///
    /// * Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name. Also, permission to call the redshift:GetClusterCredentials operation is required. When connecting to a serverless endpoint, specify the database name.
    func listSchemas(input: ListSchemasInput) async throws -> ListSchemasOutputResponse
    {
        typealias listSchemasContinuation = CheckedContinuation<ListSchemasOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSchemasContinuation) in
            listSchemas(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List of SQL statements. By default, only finished statements are shown. A token is returned to page through the statement list.
    func listStatements(input: ListStatementsInput) async throws -> ListStatementsOutputResponse
    {
        typealias listStatementsContinuation = CheckedContinuation<ListStatementsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listStatementsContinuation) in
            listStatements(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List the tables in a database. If neither SchemaPattern nor TablePattern are specified, then all tables in the database are returned. A token is returned to page through the table list. Depending on the authorization method, use one of the following combinations of request parameters:
    ///
    /// * Secrets Manager - when connecting to a cluster, specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret. When connecting to a serverless endpoint, specify the Amazon Resource Name (ARN) of the secret and the database name.
    ///
    /// * Temporary credentials - when connecting to a cluster, specify the cluster identifier, the database name, and the database user name. Also, permission to call the redshift:GetClusterCredentials operation is required. When connecting to a serverless endpoint, specify the database name.
    func listTables(input: ListTablesInput) async throws -> ListTablesOutputResponse
    {
        typealias listTablesContinuation = CheckedContinuation<ListTablesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTablesContinuation) in
            listTables(input: input) { result in
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
