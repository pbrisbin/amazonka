{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Redshift.ModifyEventSubscription
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an existing Amazon Redshift event notification subscription.
module Amazonka.Redshift.ModifyEventSubscription
  ( -- * Creating a Request
    ModifyEventSubscription (..),
    newModifyEventSubscription,

    -- * Request Lenses
    modifyEventSubscription_severity,
    modifyEventSubscription_sourceIds,
    modifyEventSubscription_sourceType,
    modifyEventSubscription_enabled,
    modifyEventSubscription_snsTopicArn,
    modifyEventSubscription_eventCategories,
    modifyEventSubscription_subscriptionName,

    -- * Destructuring the Response
    ModifyEventSubscriptionResponse (..),
    newModifyEventSubscriptionResponse,

    -- * Response Lenses
    modifyEventSubscriptionResponse_eventSubscription,
    modifyEventSubscriptionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newModifyEventSubscription' smart constructor.
data ModifyEventSubscription = ModifyEventSubscription'
  { -- | Specifies the Amazon Redshift event severity to be published by the
    -- event notification subscription.
    --
    -- Values: ERROR, INFO
    severity :: Prelude.Maybe Prelude.Text,
    -- | A list of one or more identifiers of Amazon Redshift source objects. All
    -- of the objects must be of the same type as was specified in the source
    -- type parameter. The event subscription will return only events generated
    -- by the specified objects. If not specified, then events are returned for
    -- all objects within the source type specified.
    --
    -- Example: my-cluster-1, my-cluster-2
    --
    -- Example: my-snapshot-20131010
    sourceIds :: Prelude.Maybe [Prelude.Text],
    -- | The type of source that will be generating the events. For example, if
    -- you want to be notified of events generated by a cluster, you would set
    -- this parameter to cluster. If this value is not specified, events are
    -- returned for all Amazon Redshift objects in your Amazon Web Services
    -- account. You must specify a source type in order to specify source IDs.
    --
    -- Valid values: cluster, cluster-parameter-group, cluster-security-group,
    -- cluster-snapshot, and scheduled-action.
    sourceType :: Prelude.Maybe Prelude.Text,
    -- | A Boolean value indicating if the subscription is enabled. @true@
    -- indicates the subscription is enabled
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) of the SNS topic to be used by the event
    -- notification subscription.
    snsTopicArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies the Amazon Redshift event categories to be published by the
    -- event notification subscription.
    --
    -- Values: configuration, management, monitoring, security, pending
    eventCategories :: Prelude.Maybe [Prelude.Text],
    -- | The name of the modified Amazon Redshift event notification
    -- subscription.
    subscriptionName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyEventSubscription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'severity', 'modifyEventSubscription_severity' - Specifies the Amazon Redshift event severity to be published by the
-- event notification subscription.
--
-- Values: ERROR, INFO
--
-- 'sourceIds', 'modifyEventSubscription_sourceIds' - A list of one or more identifiers of Amazon Redshift source objects. All
-- of the objects must be of the same type as was specified in the source
-- type parameter. The event subscription will return only events generated
-- by the specified objects. If not specified, then events are returned for
-- all objects within the source type specified.
--
-- Example: my-cluster-1, my-cluster-2
--
-- Example: my-snapshot-20131010
--
-- 'sourceType', 'modifyEventSubscription_sourceType' - The type of source that will be generating the events. For example, if
-- you want to be notified of events generated by a cluster, you would set
-- this parameter to cluster. If this value is not specified, events are
-- returned for all Amazon Redshift objects in your Amazon Web Services
-- account. You must specify a source type in order to specify source IDs.
--
-- Valid values: cluster, cluster-parameter-group, cluster-security-group,
-- cluster-snapshot, and scheduled-action.
--
-- 'enabled', 'modifyEventSubscription_enabled' - A Boolean value indicating if the subscription is enabled. @true@
-- indicates the subscription is enabled
--
-- 'snsTopicArn', 'modifyEventSubscription_snsTopicArn' - The Amazon Resource Name (ARN) of the SNS topic to be used by the event
-- notification subscription.
--
-- 'eventCategories', 'modifyEventSubscription_eventCategories' - Specifies the Amazon Redshift event categories to be published by the
-- event notification subscription.
--
-- Values: configuration, management, monitoring, security, pending
--
-- 'subscriptionName', 'modifyEventSubscription_subscriptionName' - The name of the modified Amazon Redshift event notification
-- subscription.
newModifyEventSubscription ::
  -- | 'subscriptionName'
  Prelude.Text ->
  ModifyEventSubscription
newModifyEventSubscription pSubscriptionName_ =
  ModifyEventSubscription'
    { severity =
        Prelude.Nothing,
      sourceIds = Prelude.Nothing,
      sourceType = Prelude.Nothing,
      enabled = Prelude.Nothing,
      snsTopicArn = Prelude.Nothing,
      eventCategories = Prelude.Nothing,
      subscriptionName = pSubscriptionName_
    }

-- | Specifies the Amazon Redshift event severity to be published by the
-- event notification subscription.
--
-- Values: ERROR, INFO
modifyEventSubscription_severity :: Lens.Lens' ModifyEventSubscription (Prelude.Maybe Prelude.Text)
modifyEventSubscription_severity = Lens.lens (\ModifyEventSubscription' {severity} -> severity) (\s@ModifyEventSubscription' {} a -> s {severity = a} :: ModifyEventSubscription)

-- | A list of one or more identifiers of Amazon Redshift source objects. All
-- of the objects must be of the same type as was specified in the source
-- type parameter. The event subscription will return only events generated
-- by the specified objects. If not specified, then events are returned for
-- all objects within the source type specified.
--
-- Example: my-cluster-1, my-cluster-2
--
-- Example: my-snapshot-20131010
modifyEventSubscription_sourceIds :: Lens.Lens' ModifyEventSubscription (Prelude.Maybe [Prelude.Text])
modifyEventSubscription_sourceIds = Lens.lens (\ModifyEventSubscription' {sourceIds} -> sourceIds) (\s@ModifyEventSubscription' {} a -> s {sourceIds = a} :: ModifyEventSubscription) Prelude.. Lens.mapping Lens.coerced

-- | The type of source that will be generating the events. For example, if
-- you want to be notified of events generated by a cluster, you would set
-- this parameter to cluster. If this value is not specified, events are
-- returned for all Amazon Redshift objects in your Amazon Web Services
-- account. You must specify a source type in order to specify source IDs.
--
-- Valid values: cluster, cluster-parameter-group, cluster-security-group,
-- cluster-snapshot, and scheduled-action.
modifyEventSubscription_sourceType :: Lens.Lens' ModifyEventSubscription (Prelude.Maybe Prelude.Text)
modifyEventSubscription_sourceType = Lens.lens (\ModifyEventSubscription' {sourceType} -> sourceType) (\s@ModifyEventSubscription' {} a -> s {sourceType = a} :: ModifyEventSubscription)

-- | A Boolean value indicating if the subscription is enabled. @true@
-- indicates the subscription is enabled
modifyEventSubscription_enabled :: Lens.Lens' ModifyEventSubscription (Prelude.Maybe Prelude.Bool)
modifyEventSubscription_enabled = Lens.lens (\ModifyEventSubscription' {enabled} -> enabled) (\s@ModifyEventSubscription' {} a -> s {enabled = a} :: ModifyEventSubscription)

-- | The Amazon Resource Name (ARN) of the SNS topic to be used by the event
-- notification subscription.
modifyEventSubscription_snsTopicArn :: Lens.Lens' ModifyEventSubscription (Prelude.Maybe Prelude.Text)
modifyEventSubscription_snsTopicArn = Lens.lens (\ModifyEventSubscription' {snsTopicArn} -> snsTopicArn) (\s@ModifyEventSubscription' {} a -> s {snsTopicArn = a} :: ModifyEventSubscription)

-- | Specifies the Amazon Redshift event categories to be published by the
-- event notification subscription.
--
-- Values: configuration, management, monitoring, security, pending
modifyEventSubscription_eventCategories :: Lens.Lens' ModifyEventSubscription (Prelude.Maybe [Prelude.Text])
modifyEventSubscription_eventCategories = Lens.lens (\ModifyEventSubscription' {eventCategories} -> eventCategories) (\s@ModifyEventSubscription' {} a -> s {eventCategories = a} :: ModifyEventSubscription) Prelude.. Lens.mapping Lens.coerced

-- | The name of the modified Amazon Redshift event notification
-- subscription.
modifyEventSubscription_subscriptionName :: Lens.Lens' ModifyEventSubscription Prelude.Text
modifyEventSubscription_subscriptionName = Lens.lens (\ModifyEventSubscription' {subscriptionName} -> subscriptionName) (\s@ModifyEventSubscription' {} a -> s {subscriptionName = a} :: ModifyEventSubscription)

instance Core.AWSRequest ModifyEventSubscription where
  type
    AWSResponse ModifyEventSubscription =
      ModifyEventSubscriptionResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ModifyEventSubscriptionResult"
      ( \s h x ->
          ModifyEventSubscriptionResponse'
            Prelude.<$> (x Core..@? "EventSubscription")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ModifyEventSubscription where
  hashWithSalt _salt ModifyEventSubscription' {..} =
    _salt `Prelude.hashWithSalt` severity
      `Prelude.hashWithSalt` sourceIds
      `Prelude.hashWithSalt` sourceType
      `Prelude.hashWithSalt` enabled
      `Prelude.hashWithSalt` snsTopicArn
      `Prelude.hashWithSalt` eventCategories
      `Prelude.hashWithSalt` subscriptionName

instance Prelude.NFData ModifyEventSubscription where
  rnf ModifyEventSubscription' {..} =
    Prelude.rnf severity
      `Prelude.seq` Prelude.rnf sourceIds
      `Prelude.seq` Prelude.rnf sourceType
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf snsTopicArn
      `Prelude.seq` Prelude.rnf eventCategories
      `Prelude.seq` Prelude.rnf subscriptionName

instance Core.ToHeaders ModifyEventSubscription where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ModifyEventSubscription where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifyEventSubscription where
  toQuery ModifyEventSubscription' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ModifyEventSubscription" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "Severity" Core.=: severity,
        "SourceIds"
          Core.=: Core.toQuery
            (Core.toQueryList "SourceId" Prelude.<$> sourceIds),
        "SourceType" Core.=: sourceType,
        "Enabled" Core.=: enabled,
        "SnsTopicArn" Core.=: snsTopicArn,
        "EventCategories"
          Core.=: Core.toQuery
            ( Core.toQueryList "EventCategory"
                Prelude.<$> eventCategories
            ),
        "SubscriptionName" Core.=: subscriptionName
      ]

-- | /See:/ 'newModifyEventSubscriptionResponse' smart constructor.
data ModifyEventSubscriptionResponse = ModifyEventSubscriptionResponse'
  { eventSubscription :: Prelude.Maybe EventSubscription,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyEventSubscriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventSubscription', 'modifyEventSubscriptionResponse_eventSubscription' - Undocumented member.
--
-- 'httpStatus', 'modifyEventSubscriptionResponse_httpStatus' - The response's http status code.
newModifyEventSubscriptionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifyEventSubscriptionResponse
newModifyEventSubscriptionResponse pHttpStatus_ =
  ModifyEventSubscriptionResponse'
    { eventSubscription =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
modifyEventSubscriptionResponse_eventSubscription :: Lens.Lens' ModifyEventSubscriptionResponse (Prelude.Maybe EventSubscription)
modifyEventSubscriptionResponse_eventSubscription = Lens.lens (\ModifyEventSubscriptionResponse' {eventSubscription} -> eventSubscription) (\s@ModifyEventSubscriptionResponse' {} a -> s {eventSubscription = a} :: ModifyEventSubscriptionResponse)

-- | The response's http status code.
modifyEventSubscriptionResponse_httpStatus :: Lens.Lens' ModifyEventSubscriptionResponse Prelude.Int
modifyEventSubscriptionResponse_httpStatus = Lens.lens (\ModifyEventSubscriptionResponse' {httpStatus} -> httpStatus) (\s@ModifyEventSubscriptionResponse' {} a -> s {httpStatus = a} :: ModifyEventSubscriptionResponse)

instance
  Prelude.NFData
    ModifyEventSubscriptionResponse
  where
  rnf ModifyEventSubscriptionResponse' {..} =
    Prelude.rnf eventSubscription
      `Prelude.seq` Prelude.rnf httpStatus
