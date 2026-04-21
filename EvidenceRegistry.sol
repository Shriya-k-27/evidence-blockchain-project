// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EvidenceRegistry {

    enum EvidenceType { IMAGE, VIDEO, AUDIO, DOCUMENT, DATASET }

    struct EvidenceRecord {
        bytes32 evidenceHash;
        string ipfsCID;
        EvidenceType evidenceType;
        uint256 timestamp;
        address submitter;
    }

    mapping(bytes32 => EvidenceRecord) public records;

    event EvidenceSubmitted(
        bytes32 indexed evidenceHash,
        address indexed submitter,
        uint256 timestamp
    );

    function submitEvidence(
        bytes32 _hash,
        string memory _cid,
        EvidenceType _type
    ) public {

        require(records[_hash].timestamp == 0, "Already exists");

        records[_hash] = EvidenceRecord({
            evidenceHash: _hash,
            ipfsCID: _cid,
            evidenceType: _type,
            timestamp: block.timestamp,
            submitter: msg.sender
        });

        emit EvidenceSubmitted(_hash, msg.sender, block.timestamp);
    }

    function getEvidence(bytes32 _hash) public view returns (EvidenceRecord memory) {
        require(records[_hash].timestamp != 0, "Not found");
        return records[_hash];
    }

    function verifyEvidence(bytes32 _hash) public view returns (bool) {
        return records[_hash].timestamp != 0;
    }
}
