//
//  UsersModel.swift
//  Assignment_iOS
//
//  Created by AnnAsFA on 8/21/18.
//  Copyright © 2018 Assignment‏. All rights reserved.
//
// To parse the JSON, add this file to your project and do:
//
//   let usersModelDetails = try UsersModelDetails(json)
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseUsersModelDetails { response in
//     if let usersModelDetails = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire

// To parse the JSON, add this file to your project and do:
//
//   let usersModelDetails = try UsersModelDetails(json)
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseUsersModelDetails { response in
//     if let usersModelDetails = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire

typealias UsersModelDetails = [UsersModelDetail]

class UsersModelDetail: Codable {
    let id: Int?
    let nodeID: String?
    let name: String?
    let fullName: String?
    let owner: Owner?
    let usersModelDetailPrivate: Bool?
    let htmlURL: String?
    let description: String?
    let fork: Bool?
    let url: String?
    let forksURL: String?
    let keysURL: String?
    let collaboratorsURL: String?
    let teamsURL: String?
    let hooksURL: String?
    let issueEventsURL: String?
    let eventsURL: String?
    let assigneesURL: String?
    let branchesURL: String?
    let tagsURL: String?
    let blobsURL: String?
    let gitTagsURL: String?
    let gitRefsURL: String?
    let treesURL: String?
    let statusesURL: String?
    let languagesURL: String?
    let stargazersURL: String?
    let contributorsURL: String?
    let subscribersURL: String?
    let subscriptionURL: String?
    let commitsURL: String?
    let gitCommitsURL: String?
    let commentsURL: String?
    let issueCommentURL: String?
    let contentsURL: String?
    let compareURL: String?
    let mergesURL: String?
    let archiveURL: String?
    let downloadsURL: String?
    let issuesURL: String?
    let pullsURL: String?
    let milestonesURL: String?
    let notificationsURL: String?
    let labelsURL: String?
    let releasesURL: String?
    let deploymentsURL: String?
    let createdAt: Date?
    let updatedAt: Date?
    let pushedAt: Date?
    let gitURL: String?
    let sshURL: String?
    let cloneURL: String?
    let svnURL: String?
    let homepage: String?
    let size: Int?
    let stargazersCount: Int?
    let watchersCount: Int?
    let language: String?
    let hasIssues: Bool?
    let hasProjects: Bool?
    let hasDownloads: Bool?
    let hasWiki: Bool?
    let hasPages: Bool?
    let forksCount: Int?
    let mirrorURL: JSONNull?
    let archived: Bool?
    let openIssuesCount: Int?
    let license: License?
    let forks: Int?
    let openIssues: Int?
    let watchers: Int?
    let defaultBranch: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case nodeID = "node_id"
        case name = "name"
        case fullName = "full_name"
        case owner = "owner"
        case usersModelDetailPrivate = "private"
        case htmlURL = "html_url"
        case description = "description"
        case fork = "fork"
        case url = "url"
        case forksURL = "forks_url"
        case keysURL = "keys_url"
        case collaboratorsURL = "collaborators_url"
        case teamsURL = "teams_url"
        case hooksURL = "hooks_url"
        case issueEventsURL = "issue_events_url"
        case eventsURL = "events_url"
        case assigneesURL = "assignees_url"
        case branchesURL = "branches_url"
        case tagsURL = "tags_url"
        case blobsURL = "blobs_url"
        case gitTagsURL = "git_tags_url"
        case gitRefsURL = "git_refs_url"
        case treesURL = "trees_url"
        case statusesURL = "statuses_url"
        case languagesURL = "languages_url"
        case stargazersURL = "stargazers_url"
        case contributorsURL = "contributors_url"
        case subscribersURL = "subscribers_url"
        case subscriptionURL = "subscription_url"
        case commitsURL = "commits_url"
        case gitCommitsURL = "git_commits_url"
        case commentsURL = "comments_url"
        case issueCommentURL = "issue_comment_url"
        case contentsURL = "contents_url"
        case compareURL = "compare_url"
        case mergesURL = "merges_url"
        case archiveURL = "archive_url"
        case downloadsURL = "downloads_url"
        case issuesURL = "issues_url"
        case pullsURL = "pulls_url"
        case milestonesURL = "milestones_url"
        case notificationsURL = "notifications_url"
        case labelsURL = "labels_url"
        case releasesURL = "releases_url"
        case deploymentsURL = "deployments_url"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case pushedAt = "pushed_at"
        case gitURL = "git_url"
        case sshURL = "ssh_url"
        case cloneURL = "clone_url"
        case svnURL = "svn_url"
        case homepage = "homepage"
        case size = "size"
        case stargazersCount = "stargazers_count"
        case watchersCount = "watchers_count"
        case language = "language"
        case hasIssues = "has_issues"
        case hasProjects = "has_projects"
        case hasDownloads = "has_downloads"
        case hasWiki = "has_wiki"
        case hasPages = "has_pages"
        case forksCount = "forks_count"
        case mirrorURL = "mirror_url"
        case archived = "archived"
        case openIssuesCount = "open_issues_count"
        case license = "license"
        case forks = "forks"
        case openIssues = "open_issues"
        case watchers = "watchers"
        case defaultBranch = "default_branch"
    }
    
    init(id: Int?, nodeID: String?, name: String?, fullName: String?, owner: Owner?, usersModelDetailPrivate: Bool?, htmlURL: String?, description: String?, fork: Bool?, url: String?, forksURL: String?, keysURL: String?, collaboratorsURL: String?, teamsURL: String?, hooksURL: String?, issueEventsURL: String?, eventsURL: String?, assigneesURL: String?, branchesURL: String?, tagsURL: String?, blobsURL: String?, gitTagsURL: String?, gitRefsURL: String?, treesURL: String?, statusesURL: String?, languagesURL: String?, stargazersURL: String?, contributorsURL: String?, subscribersURL: String?, subscriptionURL: String?, commitsURL: String?, gitCommitsURL: String?, commentsURL: String?, issueCommentURL: String?, contentsURL: String?, compareURL: String?, mergesURL: String?, archiveURL: String?, downloadsURL: String?, issuesURL: String?, pullsURL: String?, milestonesURL: String?, notificationsURL: String?, labelsURL: String?, releasesURL: String?, deploymentsURL: String?, createdAt: Date?, updatedAt: Date?, pushedAt: Date?, gitURL: String?, sshURL: String?, cloneURL: String?, svnURL: String?, homepage: String?, size: Int?, stargazersCount: Int?, watchersCount: Int?, language: String?, hasIssues: Bool?, hasProjects: Bool?, hasDownloads: Bool?, hasWiki: Bool?, hasPages: Bool?, forksCount: Int?, mirrorURL: JSONNull?, archived: Bool?, openIssuesCount: Int?, license: License?, forks: Int?, openIssues: Int?, watchers: Int?, defaultBranch: String?) {
        self.id = id
        self.nodeID = nodeID
        self.name = name
        self.fullName = fullName
        self.owner = owner
        self.usersModelDetailPrivate = usersModelDetailPrivate
        self.htmlURL = htmlURL
        self.description = description
        self.fork = fork
        self.url = url
        self.forksURL = forksURL
        self.keysURL = keysURL
        self.collaboratorsURL = collaboratorsURL
        self.teamsURL = teamsURL
        self.hooksURL = hooksURL
        self.issueEventsURL = issueEventsURL
        self.eventsURL = eventsURL
        self.assigneesURL = assigneesURL
        self.branchesURL = branchesURL
        self.tagsURL = tagsURL
        self.blobsURL = blobsURL
        self.gitTagsURL = gitTagsURL
        self.gitRefsURL = gitRefsURL
        self.treesURL = treesURL
        self.statusesURL = statusesURL
        self.languagesURL = languagesURL
        self.stargazersURL = stargazersURL
        self.contributorsURL = contributorsURL
        self.subscribersURL = subscribersURL
        self.subscriptionURL = subscriptionURL
        self.commitsURL = commitsURL
        self.gitCommitsURL = gitCommitsURL
        self.commentsURL = commentsURL
        self.issueCommentURL = issueCommentURL
        self.contentsURL = contentsURL
        self.compareURL = compareURL
        self.mergesURL = mergesURL
        self.archiveURL = archiveURL
        self.downloadsURL = downloadsURL
        self.issuesURL = issuesURL
        self.pullsURL = pullsURL
        self.milestonesURL = milestonesURL
        self.notificationsURL = notificationsURL
        self.labelsURL = labelsURL
        self.releasesURL = releasesURL
        self.deploymentsURL = deploymentsURL
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.pushedAt = pushedAt
        self.gitURL = gitURL
        self.sshURL = sshURL
        self.cloneURL = cloneURL
        self.svnURL = svnURL
        self.homepage = homepage
        self.size = size
        self.stargazersCount = stargazersCount
        self.watchersCount = watchersCount
        self.language = language
        self.hasIssues = hasIssues
        self.hasProjects = hasProjects
        self.hasDownloads = hasDownloads
        self.hasWiki = hasWiki
        self.hasPages = hasPages
        self.forksCount = forksCount
        self.mirrorURL = mirrorURL
        self.archived = archived
        self.openIssuesCount = openIssuesCount
        self.license = license
        self.forks = forks
        self.openIssues = openIssues
        self.watchers = watchers
        self.defaultBranch = defaultBranch
    }
}

class License: Codable {
    let key: String?
    let name: String?
    let spdxID: String?
    let url: String?
    let nodeID: String?
    
    enum CodingKeys: String, CodingKey {
        case key = "key"
        case name = "name"
        case spdxID = "spdx_id"
        case url = "url"
        case nodeID = "node_id"
    }
    
    init(key: String?, name: String?, spdxID: String?, url: String?, nodeID: String?) {
        self.key = key
        self.name = name
        self.spdxID = spdxID
        self.url = url
        self.nodeID = nodeID
    }
}

class Owner: Codable {
    let login: String?
    let id: Int?
    let nodeID: String?
    let avatarURL: String?
    let gravatarID: String?
    let url: String?
    let htmlURL: String?
    let followersURL: String?
    let followingURL: String?
    let gistsURL: String?
    let starredURL: String?
    let subscriptionsURL: String?
    let organizationsURL: String?
    let reposURL: String?
    let eventsURL: String?
    let receivedEventsURL: String?
    let type: String?
    let siteAdmin: Bool?
    
    enum CodingKeys: String, CodingKey {
        case login = "login"
        case id = "id"
        case nodeID = "node_id"
        case avatarURL = "avatar_url"
        case gravatarID = "gravatar_id"
        case url = "url"
        case htmlURL = "html_url"
        case followersURL = "followers_url"
        case followingURL = "following_url"
        case gistsURL = "gists_url"
        case starredURL = "starred_url"
        case subscriptionsURL = "subscriptions_url"
        case organizationsURL = "organizations_url"
        case reposURL = "repos_url"
        case eventsURL = "events_url"
        case receivedEventsURL = "received_events_url"
        case type = "type"
        case siteAdmin = "site_admin"
    }
    
    init(login: String?, id: Int?, nodeID: String?, avatarURL: String?, gravatarID: String?, url: String?, htmlURL: String?, followersURL: String?, followingURL: String?, gistsURL: String?, starredURL: String?, subscriptionsURL: String?, organizationsURL: String?, reposURL: String?, eventsURL: String?, receivedEventsURL: String?, type: String?, siteAdmin: Bool?) {
        self.login = login
        self.id = id
        self.nodeID = nodeID
        self.avatarURL = avatarURL
        self.gravatarID = gravatarID
        self.url = url
        self.htmlURL = htmlURL
        self.followersURL = followersURL
        self.followingURL = followingURL
        self.gistsURL = gistsURL
        self.starredURL = starredURL
        self.subscriptionsURL = subscriptionsURL
        self.organizationsURL = organizationsURL
        self.reposURL = reposURL
        self.eventsURL = eventsURL
        self.receivedEventsURL = receivedEventsURL
        self.type = type
        self.siteAdmin = siteAdmin
    }
}

// MARK: Convenience initializers and mutators

extension UsersModelDetail {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(UsersModelDetail.self, from: data)
        self.init(id: me.id, nodeID: me.nodeID, name: me.name, fullName: me.fullName, owner: me.owner, usersModelDetailPrivate: me.usersModelDetailPrivate, htmlURL: me.htmlURL, description: me.description, fork: me.fork, url: me.url, forksURL: me.forksURL, keysURL: me.keysURL, collaboratorsURL: me.collaboratorsURL, teamsURL: me.teamsURL, hooksURL: me.hooksURL, issueEventsURL: me.issueEventsURL, eventsURL: me.eventsURL, assigneesURL: me.assigneesURL, branchesURL: me.branchesURL, tagsURL: me.tagsURL, blobsURL: me.blobsURL, gitTagsURL: me.gitTagsURL, gitRefsURL: me.gitRefsURL, treesURL: me.treesURL, statusesURL: me.statusesURL, languagesURL: me.languagesURL, stargazersURL: me.stargazersURL, contributorsURL: me.contributorsURL, subscribersURL: me.subscribersURL, subscriptionURL: me.subscriptionURL, commitsURL: me.commitsURL, gitCommitsURL: me.gitCommitsURL, commentsURL: me.commentsURL, issueCommentURL: me.issueCommentURL, contentsURL: me.contentsURL, compareURL: me.compareURL, mergesURL: me.mergesURL, archiveURL: me.archiveURL, downloadsURL: me.downloadsURL, issuesURL: me.issuesURL, pullsURL: me.pullsURL, milestonesURL: me.milestonesURL, notificationsURL: me.notificationsURL, labelsURL: me.labelsURL, releasesURL: me.releasesURL, deploymentsURL: me.deploymentsURL, createdAt: me.createdAt, updatedAt: me.updatedAt, pushedAt: me.pushedAt, gitURL: me.gitURL, sshURL: me.sshURL, cloneURL: me.cloneURL, svnURL: me.svnURL, homepage: me.homepage, size: me.size, stargazersCount: me.stargazersCount, watchersCount: me.watchersCount, language: me.language, hasIssues: me.hasIssues, hasProjects: me.hasProjects, hasDownloads: me.hasDownloads, hasWiki: me.hasWiki, hasPages: me.hasPages, forksCount: me.forksCount, mirrorURL: me.mirrorURL, archived: me.archived, openIssuesCount: me.openIssuesCount, license: me.license, forks: me.forks, openIssues: me.openIssues, watchers: me.watchers, defaultBranch: me.defaultBranch)
    }
    
    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        id: Int?? = nil,
        nodeID: String?? = nil,
        name: String?? = nil,
        fullName: String?? = nil,
        owner: Owner?? = nil,
        usersModelDetailPrivate: Bool?? = nil,
        htmlURL: String?? = nil,
        description: String?? = nil,
        fork: Bool?? = nil,
        url: String?? = nil,
        forksURL: String?? = nil,
        keysURL: String?? = nil,
        collaboratorsURL: String?? = nil,
        teamsURL: String?? = nil,
        hooksURL: String?? = nil,
        issueEventsURL: String?? = nil,
        eventsURL: String?? = nil,
        assigneesURL: String?? = nil,
        branchesURL: String?? = nil,
        tagsURL: String?? = nil,
        blobsURL: String?? = nil,
        gitTagsURL: String?? = nil,
        gitRefsURL: String?? = nil,
        treesURL: String?? = nil,
        statusesURL: String?? = nil,
        languagesURL: String?? = nil,
        stargazersURL: String?? = nil,
        contributorsURL: String?? = nil,
        subscribersURL: String?? = nil,
        subscriptionURL: String?? = nil,
        commitsURL: String?? = nil,
        gitCommitsURL: String?? = nil,
        commentsURL: String?? = nil,
        issueCommentURL: String?? = nil,
        contentsURL: String?? = nil,
        compareURL: String?? = nil,
        mergesURL: String?? = nil,
        archiveURL: String?? = nil,
        downloadsURL: String?? = nil,
        issuesURL: String?? = nil,
        pullsURL: String?? = nil,
        milestonesURL: String?? = nil,
        notificationsURL: String?? = nil,
        labelsURL: String?? = nil,
        releasesURL: String?? = nil,
        deploymentsURL: String?? = nil,
        createdAt: Date?? = nil,
        updatedAt: Date?? = nil,
        pushedAt: Date?? = nil,
        gitURL: String?? = nil,
        sshURL: String?? = nil,
        cloneURL: String?? = nil,
        svnURL: String?? = nil,
        homepage: String?? = nil,
        size: Int?? = nil,
        stargazersCount: Int?? = nil,
        watchersCount: Int?? = nil,
        language: String?? = nil,
        hasIssues: Bool?? = nil,
        hasProjects: Bool?? = nil,
        hasDownloads: Bool?? = nil,
        hasWiki: Bool?? = nil,
        hasPages: Bool?? = nil,
        forksCount: Int?? = nil,
        mirrorURL: JSONNull?? = nil,
        archived: Bool?? = nil,
        openIssuesCount: Int?? = nil,
        license: License?? = nil,
        forks: Int?? = nil,
        openIssues: Int?? = nil,
        watchers: Int?? = nil,
        defaultBranch: String?? = nil
        ) -> UsersModelDetail {
        return UsersModelDetail(
            id: id ?? self.id,
            nodeID: nodeID ?? self.nodeID,
            name: name ?? self.name,
            fullName: fullName ?? self.fullName,
            owner: owner ?? self.owner,
            usersModelDetailPrivate: usersModelDetailPrivate ?? self.usersModelDetailPrivate,
            htmlURL: htmlURL ?? self.htmlURL,
            description: description ?? self.description,
            fork: fork ?? self.fork,
            url: url ?? self.url,
            forksURL: forksURL ?? self.forksURL,
            keysURL: keysURL ?? self.keysURL,
            collaboratorsURL: collaboratorsURL ?? self.collaboratorsURL,
            teamsURL: teamsURL ?? self.teamsURL,
            hooksURL: hooksURL ?? self.hooksURL,
            issueEventsURL: issueEventsURL ?? self.issueEventsURL,
            eventsURL: eventsURL ?? self.eventsURL,
            assigneesURL: assigneesURL ?? self.assigneesURL,
            branchesURL: branchesURL ?? self.branchesURL,
            tagsURL: tagsURL ?? self.tagsURL,
            blobsURL: blobsURL ?? self.blobsURL,
            gitTagsURL: gitTagsURL ?? self.gitTagsURL,
            gitRefsURL: gitRefsURL ?? self.gitRefsURL,
            treesURL: treesURL ?? self.treesURL,
            statusesURL: statusesURL ?? self.statusesURL,
            languagesURL: languagesURL ?? self.languagesURL,
            stargazersURL: stargazersURL ?? self.stargazersURL,
            contributorsURL: contributorsURL ?? self.contributorsURL,
            subscribersURL: subscribersURL ?? self.subscribersURL,
            subscriptionURL: subscriptionURL ?? self.subscriptionURL,
            commitsURL: commitsURL ?? self.commitsURL,
            gitCommitsURL: gitCommitsURL ?? self.gitCommitsURL,
            commentsURL: commentsURL ?? self.commentsURL,
            issueCommentURL: issueCommentURL ?? self.issueCommentURL,
            contentsURL: contentsURL ?? self.contentsURL,
            compareURL: compareURL ?? self.compareURL,
            mergesURL: mergesURL ?? self.mergesURL,
            archiveURL: archiveURL ?? self.archiveURL,
            downloadsURL: downloadsURL ?? self.downloadsURL,
            issuesURL: issuesURL ?? self.issuesURL,
            pullsURL: pullsURL ?? self.pullsURL,
            milestonesURL: milestonesURL ?? self.milestonesURL,
            notificationsURL: notificationsURL ?? self.notificationsURL,
            labelsURL: labelsURL ?? self.labelsURL,
            releasesURL: releasesURL ?? self.releasesURL,
            deploymentsURL: deploymentsURL ?? self.deploymentsURL,
            createdAt: createdAt ?? self.createdAt,
            updatedAt: updatedAt ?? self.updatedAt,
            pushedAt: pushedAt ?? self.pushedAt,
            gitURL: gitURL ?? self.gitURL,
            sshURL: sshURL ?? self.sshURL,
            cloneURL: cloneURL ?? self.cloneURL,
            svnURL: svnURL ?? self.svnURL,
            homepage: homepage ?? self.homepage,
            size: size ?? self.size,
            stargazersCount: stargazersCount ?? self.stargazersCount,
            watchersCount: watchersCount ?? self.watchersCount,
            language: language ?? self.language,
            hasIssues: hasIssues ?? self.hasIssues,
            hasProjects: hasProjects ?? self.hasProjects,
            hasDownloads: hasDownloads ?? self.hasDownloads,
            hasWiki: hasWiki ?? self.hasWiki,
            hasPages: hasPages ?? self.hasPages,
            forksCount: forksCount ?? self.forksCount,
            mirrorURL: mirrorURL ?? self.mirrorURL,
            archived: archived ?? self.archived,
            openIssuesCount: openIssuesCount ?? self.openIssuesCount,
            license: license ?? self.license,
            forks: forks ?? self.forks,
            openIssues: openIssues ?? self.openIssues,
            watchers: watchers ?? self.watchers,
            defaultBranch: defaultBranch ?? self.defaultBranch
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension License {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(License.self, from: data)
        self.init(key: me.key, name: me.name, spdxID: me.spdxID, url: me.url, nodeID: me.nodeID)
    }
    
    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        key: String?? = nil,
        name: String?? = nil,
        spdxID: String?? = nil,
        url: String?? = nil,
        nodeID: String?? = nil
        ) -> License {
        return License(
            key: key ?? self.key,
            name: name ?? self.name,
            spdxID: spdxID ?? self.spdxID,
            url: url ?? self.url,
            nodeID: nodeID ?? self.nodeID
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Owner {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Owner.self, from: data)
        self.init(login: me.login, id: me.id, nodeID: me.nodeID, avatarURL: me.avatarURL, gravatarID: me.gravatarID, url: me.url, htmlURL: me.htmlURL, followersURL: me.followersURL, followingURL: me.followingURL, gistsURL: me.gistsURL, starredURL: me.starredURL, subscriptionsURL: me.subscriptionsURL, organizationsURL: me.organizationsURL, reposURL: me.reposURL, eventsURL: me.eventsURL, receivedEventsURL: me.receivedEventsURL, type: me.type, siteAdmin: me.siteAdmin)
    }
    
    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        login: String?? = nil,
        id: Int?? = nil,
        nodeID: String?? = nil,
        avatarURL: String?? = nil,
        gravatarID: String?? = nil,
        url: String?? = nil,
        htmlURL: String?? = nil,
        followersURL: String?? = nil,
        followingURL: String?? = nil,
        gistsURL: String?? = nil,
        starredURL: String?? = nil,
        subscriptionsURL: String?? = nil,
        organizationsURL: String?? = nil,
        reposURL: String?? = nil,
        eventsURL: String?? = nil,
        receivedEventsURL: String?? = nil,
        type: String?? = nil,
        siteAdmin: Bool?? = nil
        ) -> Owner {
        return Owner(
            login: login ?? self.login,
            id: id ?? self.id,
            nodeID: nodeID ?? self.nodeID,
            avatarURL: avatarURL ?? self.avatarURL,
            gravatarID: gravatarID ?? self.gravatarID,
            url: url ?? self.url,
            htmlURL: htmlURL ?? self.htmlURL,
            followersURL: followersURL ?? self.followersURL,
            followingURL: followingURL ?? self.followingURL,
            gistsURL: gistsURL ?? self.gistsURL,
            starredURL: starredURL ?? self.starredURL,
            subscriptionsURL: subscriptionsURL ?? self.subscriptionsURL,
            organizationsURL: organizationsURL ?? self.organizationsURL,
            reposURL: reposURL ?? self.reposURL,
            eventsURL: eventsURL ?? self.eventsURL,
            receivedEventsURL: receivedEventsURL ?? self.receivedEventsURL,
            type: type ?? self.type,
            siteAdmin: siteAdmin ?? self.siteAdmin
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Array where Element == UsersModelDetails.Element {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UsersModelDetails.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}



func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Alamofire response handlers

extension DataRequest {
    fileprivate func decodableResponseSerializer<T: Decodable>() -> DataResponseSerializer<T> {
        return DataResponseSerializer { _, response, data, error in
            guard error == nil else { return .failure(error!) }
            
            guard let data = data else {
                return .failure(AFError.responseSerializationFailed(reason: .inputDataNil))
            }
            
            return Result { try newJSONDecoder().decode(T.self, from: data) }
        }
    }
    
    @discardableResult
    fileprivate func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler: completionHandler)
    }
    
    @discardableResult
    func responseUsersModelDetails(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<UsersModelDetails>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }
}
