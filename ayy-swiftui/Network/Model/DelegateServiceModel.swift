// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let memberConfig = try? JSONDecoder().decode(MemberConfig.self, from: jsonData)

import Foundation

// MARK: - DataClass
struct MemberConfigModel: Codable {
    let soundConfig: SoundConfig?
    let chatGuideImg: String?
    let drawTips: String?
    let newsTag: [NewsTag]?
    let favorite: [Favorite]?
    let intimacyImgs: [String]?
    let taskCopywriting: String?
    let questionBank: [QuestionBank]?
    let savor: [NewsTag]?
    let feedReasonNew: [JSONAny]?
    let matchBarrage, officialAccount, showText: String?
    let familyPosition: [Family]?
    let isOpen: String?
    let familyGrade: [Family]?
    let gender: [Favorite]?
    let feedReason: [FeedReason]?
    let conversionScale: Double?
    let oaid, voiceCopywriting: String?
    let groupMessageConfig: GroupMessageConfig?
    let positionList: [PositionList]?
    let taskType: [FeedReason]?
    let newsTags: [NewsTag]?
    let managerGroup: ManagerGroup?
    let homepageAudioVideoUnlockLevel: Int?
    let banWord: [String]?

    enum CodingKeys: String, CodingKey {
        case soundConfig = "sound_config"
        case chatGuideImg = "chat_guide_img"
        case drawTips = "draw_tips"
        case newsTag = "news_tag"
        case favorite
        case intimacyImgs = "intimacy_imgs"
        case taskCopywriting = "task_copywriting"
        case questionBank = "question_bank"
        case savor
        case feedReasonNew = "feed_reason_new"
        case matchBarrage = "match_barrage"
        case officialAccount = "official_account"
        case showText = "show_text"
        case familyPosition
        case isOpen = "is_open"
        case familyGrade = "family_grade"
        case gender
        case feedReason = "feed_reason"
        case conversionScale = "conversion_scale"
        case oaid
        case voiceCopywriting = "voice_copywriting"
        case groupMessageConfig = "group_message_config"
        case positionList
        case taskType = "task_type"
        case newsTags = "news_tags"
        case managerGroup = "manager_group"
        case homepageAudioVideoUnlockLevel = "homepage_audio_video_unlock_level"
        case banWord = "ban_word"
    }
}

// MARK: - Family
struct Family: Codable {
    let field2: String?
    let itemOrder: Int?
    let img: String?
    let field1, name, pid, id: String?

    enum CodingKeys: String, CodingKey {
        case field2 = "FIELD2"
        case itemOrder = "ITEM_ORDER"
        case img = "IMG"
        case field1 = "FIELD1"
        case name = "NAME"
        case pid = "PID"
        case id = "ID"
    }
}

// MARK: - Favorite
struct Favorite: Codable {
    let itemLeaf, itemImg: String?
    let flag: Int?
    let itemID, id, codePath, itemField2: String?
    let sCmpy, pk, name, sPublic: String?
    let field1: String?
    let itemPcode, itemOrder, dictID, itemLevel: String?
    let itemField1: String?

    enum CodingKeys: String, CodingKey {
        case itemLeaf = "ITEM_LEAF"
        case itemImg = "ITEM_IMG"
        case flag = "FLAG"
        case itemID = "ITEM_ID"
        case id = "ID"
        case codePath = "CODE_PATH"
        case itemField2 = "ITEM_FIELD2"
        case sCmpy = "S_CMPY"
        case pk = "_PK_"
        case name = "NAME"
        case sPublic = "S_PUBLIC"
        case field1 = "FIELD1"
        case itemPcode = "ITEM_PCODE"
        case itemOrder = "ITEM_ORDER"
        case dictID = "DICT_ID"
        case itemLevel = "ITEM_LEVEL"
        case itemField1 = "ITEM_FIELD1"
    }
}

// MARK: - FeedReason
struct FeedReason: Codable {
    let leaf, layer: Int?
    let child: [FeedReason]?
    let path: String?
    let name, pid, id: String?

    enum CodingKeys: String, CodingKey {
        case leaf = "LEAF"
        case layer = "LAYER"
        case child = "CHILD"
        case path = "PATH"
        case name = "NAME"
        case pid = "PID"
        case id = "ID"
    }
}

// MARK: - GroupMessageConfig
struct GroupMessageConfig: Codable {
    let textLength, imageSize: Int?

    enum CodingKeys: String, CodingKey {
        case textLength = "text_length"
        case imageSize = "image_size"
    }
}

// MARK: - ManagerGroup
struct ManagerGroup: Codable {
    let wechatStatus: Bool?
    let textContent: String?
    let imgContent, wechatImgContent: String?
    let groupNo: String?

    enum CodingKeys: String, CodingKey {
        case wechatStatus = "wechat_status"
        case textContent = "text_content"
        case imgContent = "img_content"
        case wechatImgContent = "wechat_img_content"
        case groupNo = "group_no"
    }
}

// MARK: - NewsTag
struct NewsTag: Codable {
    let leaf, layer: Int?
    let itemImg, itemField1: String?
    let child: [NewsTag]?
    let path, name, pid, id: String?
    let field2, field: String?

    enum CodingKeys: String, CodingKey {
        case leaf = "LEAF"
        case layer = "LAYER"
        case itemImg = "ITEM_IMG"
        case itemField1 = "ITEM_FIELD1"
        case child = "CHILD"
        case path = "PATH"
        case name = "NAME"
        case pid = "PID"
        case id = "ID"
        case field2 = "FIELD2"
        case field = "FIELD"
    }
}

// MARK: - PositionList
struct PositionList: Codable {
    let pid, id, name: String?

    enum CodingKeys: String, CodingKey {
        case pid = "PID"
        case id = "ID"
        case name = "NAME"
    }
}

// MARK: - QuestionBank
struct QuestionBank: Codable {
    let problem: String?
    let answer: [String]?
}

// MARK: - SoundConfig
struct SoundConfig: Codable {
    let rechargeSoundConfig: String?
    let intimacySoundConfig: String?
    let ordersSoundConfig: String?
    let matchSoundConfig, callSoundConfig: String?
    let voiceSoundConfig: String?
    let messageSoundConfig: String?
    let drawSoundConfig: String?

    enum CodingKeys: String, CodingKey {
        case rechargeSoundConfig = "recharge_sound_config"
        case intimacySoundConfig = "intimacy_sound_config"
        case ordersSoundConfig = "orders_sound_config"
        case matchSoundConfig = "match_sound_config"
        case callSoundConfig = "call_sound_config"
        case voiceSoundConfig = "voice_sound_config"
        case messageSoundConfig = "message_sound_config"
        case drawSoundConfig = "draw_sound_config"
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
