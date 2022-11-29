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
-- Module      : Amazonka.Lambda.ListVersionsByFunction
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of
-- <https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html versions>,
-- with the version-specific configuration of each. Lambda returns up to 50
-- versions per call.
--
-- This operation returns paginated results.
module Amazonka.Lambda.ListVersionsByFunction
  ( -- * Creating a Request
    ListVersionsByFunction (..),
    newListVersionsByFunction,

    -- * Request Lenses
    listVersionsByFunction_marker,
    listVersionsByFunction_maxItems,
    listVersionsByFunction_functionName,

    -- * Destructuring the Response
    ListVersionsByFunctionResponse (..),
    newListVersionsByFunctionResponse,

    -- * Response Lenses
    listVersionsByFunctionResponse_versions,
    listVersionsByFunctionResponse_nextMarker,
    listVersionsByFunctionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.Lambda.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListVersionsByFunction' smart constructor.
data ListVersionsByFunction = ListVersionsByFunction'
  { -- | Specify the pagination token that\'s returned by a previous request to
    -- retrieve the next page of results.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of versions to return. Note that
    -- @ListVersionsByFunction@ returns a maximum of 50 items in each response,
    -- even if you set the number higher.
    maxItems :: Prelude.Maybe Prelude.Natural,
    -- | The name of the Lambda function.
    --
    -- __Name formats__
    --
    -- -   __Function name__ - @MyFunction@.
    --
    -- -   __Function ARN__ -
    --     @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@.
    --
    -- -   __Partial ARN__ - @123456789012:function:MyFunction@.
    --
    -- The length constraint applies only to the full ARN. If you specify only
    -- the function name, it is limited to 64 characters in length.
    functionName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVersionsByFunction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listVersionsByFunction_marker' - Specify the pagination token that\'s returned by a previous request to
-- retrieve the next page of results.
--
-- 'maxItems', 'listVersionsByFunction_maxItems' - The maximum number of versions to return. Note that
-- @ListVersionsByFunction@ returns a maximum of 50 items in each response,
-- even if you set the number higher.
--
-- 'functionName', 'listVersionsByFunction_functionName' - The name of the Lambda function.
--
-- __Name formats__
--
-- -   __Function name__ - @MyFunction@.
--
-- -   __Function ARN__ -
--     @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@.
--
-- -   __Partial ARN__ - @123456789012:function:MyFunction@.
--
-- The length constraint applies only to the full ARN. If you specify only
-- the function name, it is limited to 64 characters in length.
newListVersionsByFunction ::
  -- | 'functionName'
  Prelude.Text ->
  ListVersionsByFunction
newListVersionsByFunction pFunctionName_ =
  ListVersionsByFunction'
    { marker = Prelude.Nothing,
      maxItems = Prelude.Nothing,
      functionName = pFunctionName_
    }

-- | Specify the pagination token that\'s returned by a previous request to
-- retrieve the next page of results.
listVersionsByFunction_marker :: Lens.Lens' ListVersionsByFunction (Prelude.Maybe Prelude.Text)
listVersionsByFunction_marker = Lens.lens (\ListVersionsByFunction' {marker} -> marker) (\s@ListVersionsByFunction' {} a -> s {marker = a} :: ListVersionsByFunction)

-- | The maximum number of versions to return. Note that
-- @ListVersionsByFunction@ returns a maximum of 50 items in each response,
-- even if you set the number higher.
listVersionsByFunction_maxItems :: Lens.Lens' ListVersionsByFunction (Prelude.Maybe Prelude.Natural)
listVersionsByFunction_maxItems = Lens.lens (\ListVersionsByFunction' {maxItems} -> maxItems) (\s@ListVersionsByFunction' {} a -> s {maxItems = a} :: ListVersionsByFunction)

-- | The name of the Lambda function.
--
-- __Name formats__
--
-- -   __Function name__ - @MyFunction@.
--
-- -   __Function ARN__ -
--     @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@.
--
-- -   __Partial ARN__ - @123456789012:function:MyFunction@.
--
-- The length constraint applies only to the full ARN. If you specify only
-- the function name, it is limited to 64 characters in length.
listVersionsByFunction_functionName :: Lens.Lens' ListVersionsByFunction Prelude.Text
listVersionsByFunction_functionName = Lens.lens (\ListVersionsByFunction' {functionName} -> functionName) (\s@ListVersionsByFunction' {} a -> s {functionName = a} :: ListVersionsByFunction)

instance Core.AWSPager ListVersionsByFunction where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listVersionsByFunctionResponse_nextMarker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listVersionsByFunctionResponse_versions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listVersionsByFunction_marker
          Lens..~ rs
          Lens.^? listVersionsByFunctionResponse_nextMarker
            Prelude.. Lens._Just

instance Core.AWSRequest ListVersionsByFunction where
  type
    AWSResponse ListVersionsByFunction =
      ListVersionsByFunctionResponse
  request overrides =
    Request.get (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ListVersionsByFunctionResponse'
            Prelude.<$> (x Core..?> "Versions" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextMarker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListVersionsByFunction where
  hashWithSalt _salt ListVersionsByFunction' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` maxItems
      `Prelude.hashWithSalt` functionName

instance Prelude.NFData ListVersionsByFunction where
  rnf ListVersionsByFunction' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf maxItems
      `Prelude.seq` Prelude.rnf functionName

instance Core.ToHeaders ListVersionsByFunction where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListVersionsByFunction where
  toPath ListVersionsByFunction' {..} =
    Prelude.mconcat
      [ "/2015-03-31/functions/",
        Core.toBS functionName,
        "/versions"
      ]

instance Core.ToQuery ListVersionsByFunction where
  toQuery ListVersionsByFunction' {..} =
    Prelude.mconcat
      [ "Marker" Core.=: marker,
        "MaxItems" Core.=: maxItems
      ]

-- | /See:/ 'newListVersionsByFunctionResponse' smart constructor.
data ListVersionsByFunctionResponse = ListVersionsByFunctionResponse'
  { -- | A list of Lambda function versions.
    versions :: Prelude.Maybe [FunctionConfiguration],
    -- | The pagination token that\'s included if more results are available.
    nextMarker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVersionsByFunctionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'versions', 'listVersionsByFunctionResponse_versions' - A list of Lambda function versions.
--
-- 'nextMarker', 'listVersionsByFunctionResponse_nextMarker' - The pagination token that\'s included if more results are available.
--
-- 'httpStatus', 'listVersionsByFunctionResponse_httpStatus' - The response's http status code.
newListVersionsByFunctionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListVersionsByFunctionResponse
newListVersionsByFunctionResponse pHttpStatus_ =
  ListVersionsByFunctionResponse'
    { versions =
        Prelude.Nothing,
      nextMarker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of Lambda function versions.
listVersionsByFunctionResponse_versions :: Lens.Lens' ListVersionsByFunctionResponse (Prelude.Maybe [FunctionConfiguration])
listVersionsByFunctionResponse_versions = Lens.lens (\ListVersionsByFunctionResponse' {versions} -> versions) (\s@ListVersionsByFunctionResponse' {} a -> s {versions = a} :: ListVersionsByFunctionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The pagination token that\'s included if more results are available.
listVersionsByFunctionResponse_nextMarker :: Lens.Lens' ListVersionsByFunctionResponse (Prelude.Maybe Prelude.Text)
listVersionsByFunctionResponse_nextMarker = Lens.lens (\ListVersionsByFunctionResponse' {nextMarker} -> nextMarker) (\s@ListVersionsByFunctionResponse' {} a -> s {nextMarker = a} :: ListVersionsByFunctionResponse)

-- | The response's http status code.
listVersionsByFunctionResponse_httpStatus :: Lens.Lens' ListVersionsByFunctionResponse Prelude.Int
listVersionsByFunctionResponse_httpStatus = Lens.lens (\ListVersionsByFunctionResponse' {httpStatus} -> httpStatus) (\s@ListVersionsByFunctionResponse' {} a -> s {httpStatus = a} :: ListVersionsByFunctionResponse)

instance
  Prelude.NFData
    ListVersionsByFunctionResponse
  where
  rnf ListVersionsByFunctionResponse' {..} =
    Prelude.rnf versions
      `Prelude.seq` Prelude.rnf nextMarker
      `Prelude.seq` Prelude.rnf httpStatus
