//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** OkResponse model */
public class OkResponse: APIModel {

    /** Ok response model */
    public var success: SuccessResponse?

    public init(success: SuccessResponse? = nil) {
        self.success = success
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        success = try container.decodeIfPresent("success")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(success, forKey: "success")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? OkResponse else { return false }
      guard self.success == object.success else { return false }
      return true
    }

    public static func == (lhs: OkResponse, rhs: OkResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
