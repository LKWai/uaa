--
-- Cloud Foundry
-- Copyright (c) [2017] Pivotal Software, Inc. All Rights Reserved.
--
-- This product is licensed to you under the Apache License, Version 2.0 (the "License").
-- You may not use this product except in compliance with the License.
--
-- This product includes a number of subcomponents with
-- separate copyright notices and license terms. Your use of these
-- subcomponents is subject to the terms and conditions of the
-- subcomponent's license, as noted in the LICENSE file.
--
ALTER TABLE authz_approvals ADD identity_zone_id nvarchar(36) NULL;
GO
UPDATE authz_approvals SET identity_zone_id = (SELECT identity_zone_id from users WHERE authz_approvals.user_id = users.id);
