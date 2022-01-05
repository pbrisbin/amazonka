{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SSOAdmin.Types.AccountAssignmentOperationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSOAdmin.Types.AccountAssignmentOperationStatus where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSOAdmin.Types.PrincipalType
import Amazonka.SSOAdmin.Types.StatusValues
import Amazonka.SSOAdmin.Types.TargetType

-- | The status of the creation or deletion operation of an assignment that a
-- principal needs to access an account.
--
-- /See:/ 'newAccountAssignmentOperationStatus' smart constructor.
data AccountAssignmentOperationStatus = AccountAssignmentOperationStatus'
  { -- | The identifier for tracking the request operation that is generated by
    -- the universally unique identifier (UUID) workflow.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The status of the permission set provisioning process.
    status :: Prelude.Maybe StatusValues,
    -- | The message that contains an error or exception in case of an operation
    -- failure.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | TargetID is an Amazon Web Services account identifier, typically a 10-12
    -- digit string (For example, 123456789012).
    targetId :: Prelude.Maybe Prelude.Text,
    -- | An identifier for an object in Amazon Web Services SSO, such as a user
    -- or group. PrincipalIds are GUIDs (For example,
    -- f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
    -- PrincipalIds in Amazon Web Services SSO, see the
    -- </singlesignon/latest/IdentityStoreAPIReference/welcome.html Amazon Web Services SSO Identity Store API Reference>.
    principalId :: Prelude.Maybe Prelude.Text,
    -- | The entity type for which the assignment will be created.
    principalType :: Prelude.Maybe PrincipalType,
    -- | The entity type for which the assignment will be created.
    targetType :: Prelude.Maybe TargetType,
    -- | The date that the permission set was created.
    createdDate :: Prelude.Maybe Core.POSIX,
    -- | The ARN of the permission set. For more information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
    -- in the /Amazon Web Services General Reference/.
    permissionSetArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccountAssignmentOperationStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'accountAssignmentOperationStatus_requestId' - The identifier for tracking the request operation that is generated by
-- the universally unique identifier (UUID) workflow.
--
-- 'status', 'accountAssignmentOperationStatus_status' - The status of the permission set provisioning process.
--
-- 'failureReason', 'accountAssignmentOperationStatus_failureReason' - The message that contains an error or exception in case of an operation
-- failure.
--
-- 'targetId', 'accountAssignmentOperationStatus_targetId' - TargetID is an Amazon Web Services account identifier, typically a 10-12
-- digit string (For example, 123456789012).
--
-- 'principalId', 'accountAssignmentOperationStatus_principalId' - An identifier for an object in Amazon Web Services SSO, such as a user
-- or group. PrincipalIds are GUIDs (For example,
-- f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
-- PrincipalIds in Amazon Web Services SSO, see the
-- </singlesignon/latest/IdentityStoreAPIReference/welcome.html Amazon Web Services SSO Identity Store API Reference>.
--
-- 'principalType', 'accountAssignmentOperationStatus_principalType' - The entity type for which the assignment will be created.
--
-- 'targetType', 'accountAssignmentOperationStatus_targetType' - The entity type for which the assignment will be created.
--
-- 'createdDate', 'accountAssignmentOperationStatus_createdDate' - The date that the permission set was created.
--
-- 'permissionSetArn', 'accountAssignmentOperationStatus_permissionSetArn' - The ARN of the permission set. For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
newAccountAssignmentOperationStatus ::
  AccountAssignmentOperationStatus
newAccountAssignmentOperationStatus =
  AccountAssignmentOperationStatus'
    { requestId =
        Prelude.Nothing,
      status = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      targetId = Prelude.Nothing,
      principalId = Prelude.Nothing,
      principalType = Prelude.Nothing,
      targetType = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      permissionSetArn = Prelude.Nothing
    }

-- | The identifier for tracking the request operation that is generated by
-- the universally unique identifier (UUID) workflow.
accountAssignmentOperationStatus_requestId :: Lens.Lens' AccountAssignmentOperationStatus (Prelude.Maybe Prelude.Text)
accountAssignmentOperationStatus_requestId = Lens.lens (\AccountAssignmentOperationStatus' {requestId} -> requestId) (\s@AccountAssignmentOperationStatus' {} a -> s {requestId = a} :: AccountAssignmentOperationStatus)

-- | The status of the permission set provisioning process.
accountAssignmentOperationStatus_status :: Lens.Lens' AccountAssignmentOperationStatus (Prelude.Maybe StatusValues)
accountAssignmentOperationStatus_status = Lens.lens (\AccountAssignmentOperationStatus' {status} -> status) (\s@AccountAssignmentOperationStatus' {} a -> s {status = a} :: AccountAssignmentOperationStatus)

-- | The message that contains an error or exception in case of an operation
-- failure.
accountAssignmentOperationStatus_failureReason :: Lens.Lens' AccountAssignmentOperationStatus (Prelude.Maybe Prelude.Text)
accountAssignmentOperationStatus_failureReason = Lens.lens (\AccountAssignmentOperationStatus' {failureReason} -> failureReason) (\s@AccountAssignmentOperationStatus' {} a -> s {failureReason = a} :: AccountAssignmentOperationStatus)

-- | TargetID is an Amazon Web Services account identifier, typically a 10-12
-- digit string (For example, 123456789012).
accountAssignmentOperationStatus_targetId :: Lens.Lens' AccountAssignmentOperationStatus (Prelude.Maybe Prelude.Text)
accountAssignmentOperationStatus_targetId = Lens.lens (\AccountAssignmentOperationStatus' {targetId} -> targetId) (\s@AccountAssignmentOperationStatus' {} a -> s {targetId = a} :: AccountAssignmentOperationStatus)

-- | An identifier for an object in Amazon Web Services SSO, such as a user
-- or group. PrincipalIds are GUIDs (For example,
-- f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
-- PrincipalIds in Amazon Web Services SSO, see the
-- </singlesignon/latest/IdentityStoreAPIReference/welcome.html Amazon Web Services SSO Identity Store API Reference>.
accountAssignmentOperationStatus_principalId :: Lens.Lens' AccountAssignmentOperationStatus (Prelude.Maybe Prelude.Text)
accountAssignmentOperationStatus_principalId = Lens.lens (\AccountAssignmentOperationStatus' {principalId} -> principalId) (\s@AccountAssignmentOperationStatus' {} a -> s {principalId = a} :: AccountAssignmentOperationStatus)

-- | The entity type for which the assignment will be created.
accountAssignmentOperationStatus_principalType :: Lens.Lens' AccountAssignmentOperationStatus (Prelude.Maybe PrincipalType)
accountAssignmentOperationStatus_principalType = Lens.lens (\AccountAssignmentOperationStatus' {principalType} -> principalType) (\s@AccountAssignmentOperationStatus' {} a -> s {principalType = a} :: AccountAssignmentOperationStatus)

-- | The entity type for which the assignment will be created.
accountAssignmentOperationStatus_targetType :: Lens.Lens' AccountAssignmentOperationStatus (Prelude.Maybe TargetType)
accountAssignmentOperationStatus_targetType = Lens.lens (\AccountAssignmentOperationStatus' {targetType} -> targetType) (\s@AccountAssignmentOperationStatus' {} a -> s {targetType = a} :: AccountAssignmentOperationStatus)

-- | The date that the permission set was created.
accountAssignmentOperationStatus_createdDate :: Lens.Lens' AccountAssignmentOperationStatus (Prelude.Maybe Prelude.UTCTime)
accountAssignmentOperationStatus_createdDate = Lens.lens (\AccountAssignmentOperationStatus' {createdDate} -> createdDate) (\s@AccountAssignmentOperationStatus' {} a -> s {createdDate = a} :: AccountAssignmentOperationStatus) Prelude.. Lens.mapping Core._Time

-- | The ARN of the permission set. For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
accountAssignmentOperationStatus_permissionSetArn :: Lens.Lens' AccountAssignmentOperationStatus (Prelude.Maybe Prelude.Text)
accountAssignmentOperationStatus_permissionSetArn = Lens.lens (\AccountAssignmentOperationStatus' {permissionSetArn} -> permissionSetArn) (\s@AccountAssignmentOperationStatus' {} a -> s {permissionSetArn = a} :: AccountAssignmentOperationStatus)

instance
  Core.FromJSON
    AccountAssignmentOperationStatus
  where
  parseJSON =
    Core.withObject
      "AccountAssignmentOperationStatus"
      ( \x ->
          AccountAssignmentOperationStatus'
            Prelude.<$> (x Core..:? "RequestId")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "FailureReason")
            Prelude.<*> (x Core..:? "TargetId")
            Prelude.<*> (x Core..:? "PrincipalId")
            Prelude.<*> (x Core..:? "PrincipalType")
            Prelude.<*> (x Core..:? "TargetType")
            Prelude.<*> (x Core..:? "CreatedDate")
            Prelude.<*> (x Core..:? "PermissionSetArn")
      )

instance
  Prelude.Hashable
    AccountAssignmentOperationStatus
  where
  hashWithSalt
    _salt
    AccountAssignmentOperationStatus' {..} =
      _salt `Prelude.hashWithSalt` requestId
        `Prelude.hashWithSalt` status
        `Prelude.hashWithSalt` failureReason
        `Prelude.hashWithSalt` targetId
        `Prelude.hashWithSalt` principalId
        `Prelude.hashWithSalt` principalType
        `Prelude.hashWithSalt` targetType
        `Prelude.hashWithSalt` createdDate
        `Prelude.hashWithSalt` permissionSetArn

instance
  Prelude.NFData
    AccountAssignmentOperationStatus
  where
  rnf AccountAssignmentOperationStatus' {..} =
    Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf targetId
      `Prelude.seq` Prelude.rnf principalId
      `Prelude.seq` Prelude.rnf principalType
      `Prelude.seq` Prelude.rnf targetType
      `Prelude.seq` Prelude.rnf createdDate
      `Prelude.seq` Prelude.rnf permissionSetArn
