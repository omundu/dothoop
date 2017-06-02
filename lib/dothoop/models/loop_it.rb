module Dothoop
  class LoopIt < BaseModel
    attribute :name
    attribute :transactionType
    attribute :status
    attribute :streetName
    attribute :streetNumber
    attribute :unit
    attribute :city
    attribute :zipCode
    attribute :state
    attribute :country
    attribute :mlsPropertId
    attribute :mlsId
    attribute :participants, Array(Participant)
    attribute :templateId
    attribute :mlsAgentId

    attribute :id
    attribute :profileId
    attribute :created
    attribute :updated
    attribute :loopUrl
  end
end

# POST /loop-it?profile_id=4711
# {
#   "name": "Brian Erwin",
#   "transactionType": "PURCHASE_OFFER",
#   "status": "PRE_OFFER",
#   "streetName": "Waterview Dr",
#   "streetNumber": "2100",
#   "unit": "12",
#   "city": "San Francisco",
#   "zipCode": "94114",
#   "state": "CA",
#   "country": "US",
#   "mlsPropertId": "43FSB8",
#   "mlsId": "",
#   "participants": [
#     {
#       "fullName": "Brian Erwin",
#       "email": "brianerwin@newkyhome.com",
#       "role": "BUYER"
#     },
#     {
#       "fullName": "Allen Agent",
#       "email": "allen.agent@gmail.com",
#       "role": "LISTING_AGENT"
#     },
#     {
#       "fullName": "Sean Seller",
#       "email": "sean.seller@yahoo.com",
#       "role": "SELLER"
#     }
#   ],
#   "templateId": 1424,
#   "mlsAgentId": "123456789"
# }


# {
#   "data": {
#     "id": 34308,
#     "profileId": 4711,
#     "name": "Brian Erwin",
#     "transactionType": "PURCHASE_OFFER",
#     "status": "PRE_OFFER",
#     "created": "2017-05-30T21:42:17Z",
#     "updated": "2017-05-31T23:27:11Z",
#     "loopUrl": "https://www.dotloop.com/m/loop?viewId=34308"
#   }
# }
