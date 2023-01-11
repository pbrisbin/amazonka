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
-- Module      : Amazonka.EC2.Types.Phase2EncryptionAlgorithmsRequestListValue
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.Phase2EncryptionAlgorithmsRequestListValue where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

-- | Specifies the encryption algorithm for the VPN tunnel for phase 2 IKE
-- negotiations.
--
-- /See:/ 'newPhase2EncryptionAlgorithmsRequestListValue' smart constructor.
data Phase2EncryptionAlgorithmsRequestListValue = Phase2EncryptionAlgorithmsRequestListValue'
  { -- | The encryption algorithm.
    value :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Phase2EncryptionAlgorithmsRequestListValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'phase2EncryptionAlgorithmsRequestListValue_value' - The encryption algorithm.
newPhase2EncryptionAlgorithmsRequestListValue ::
  Phase2EncryptionAlgorithmsRequestListValue
newPhase2EncryptionAlgorithmsRequestListValue =
  Phase2EncryptionAlgorithmsRequestListValue'
    { value =
        Prelude.Nothing
    }

-- | The encryption algorithm.
phase2EncryptionAlgorithmsRequestListValue_value :: Lens.Lens' Phase2EncryptionAlgorithmsRequestListValue (Prelude.Maybe Prelude.Text)
phase2EncryptionAlgorithmsRequestListValue_value = Lens.lens (\Phase2EncryptionAlgorithmsRequestListValue' {value} -> value) (\s@Phase2EncryptionAlgorithmsRequestListValue' {} a -> s {value = a} :: Phase2EncryptionAlgorithmsRequestListValue)

instance
  Prelude.Hashable
    Phase2EncryptionAlgorithmsRequestListValue
  where
  hashWithSalt
    _salt
    Phase2EncryptionAlgorithmsRequestListValue' {..} =
      _salt `Prelude.hashWithSalt` value

instance
  Prelude.NFData
    Phase2EncryptionAlgorithmsRequestListValue
  where
  rnf Phase2EncryptionAlgorithmsRequestListValue' {..} =
    Prelude.rnf value

instance
  Data.ToQuery
    Phase2EncryptionAlgorithmsRequestListValue
  where
  toQuery
    Phase2EncryptionAlgorithmsRequestListValue' {..} =
      Prelude.mconcat ["Value" Data.=: value]
