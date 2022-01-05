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
-- Module      : Amazonka.MediaConvert.Types.HlsImageBasedTrickPlaySettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.HlsImageBasedTrickPlaySettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConvert.Types.HlsIntervalCadence
import qualified Amazonka.Prelude as Prelude

-- | Tile and thumbnail settings applicable when imageBasedTrickPlay is
-- ADVANCED
--
-- /See:/ 'newHlsImageBasedTrickPlaySettings' smart constructor.
data HlsImageBasedTrickPlaySettings = HlsImageBasedTrickPlaySettings'
  { -- | Number of thumbnails in each row of a tile image. Set a value between 1
    -- and 512.
    tileWidth :: Prelude.Maybe Prelude.Natural,
    -- | Height of each thumbnail within each tile image, in pixels. Leave blank
    -- to maintain aspect ratio with thumbnail width. If following the aspect
    -- ratio would lead to a total tile height greater than 4096, then the job
    -- will be rejected. Must be divisible by 2.
    thumbnailHeight :: Prelude.Maybe Prelude.Natural,
    -- | The cadence MediaConvert follows for generating thumbnails. If set to
    -- FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in
    -- the output (matching the GOP cadence). If set to FOLLOW_CUSTOM,
    -- MediaConvert generates thumbnails according to the interval you specify
    -- in thumbnailInterval.
    intervalCadence :: Prelude.Maybe HlsIntervalCadence,
    -- | Width of each thumbnail within each tile image, in pixels. Default is
    -- 312. Must be divisible by 8.
    thumbnailWidth :: Prelude.Maybe Prelude.Natural,
    -- | Enter the interval, in seconds, that MediaConvert uses to generate
    -- thumbnails. If the interval you enter doesn\'t align with the output
    -- frame rate, MediaConvert automatically rounds the interval to align with
    -- the output frame rate. For example, if the output frame rate is 29.97
    -- frames per second and you enter 5, MediaConvert uses a 150 frame
    -- interval to generate thumbnails.
    thumbnailInterval :: Prelude.Maybe Prelude.Double,
    -- | Number of thumbnails in each column of a tile image. Set a value between
    -- 2 and 2048. Must be divisible by 2.
    tileHeight :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HlsImageBasedTrickPlaySettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tileWidth', 'hlsImageBasedTrickPlaySettings_tileWidth' - Number of thumbnails in each row of a tile image. Set a value between 1
-- and 512.
--
-- 'thumbnailHeight', 'hlsImageBasedTrickPlaySettings_thumbnailHeight' - Height of each thumbnail within each tile image, in pixels. Leave blank
-- to maintain aspect ratio with thumbnail width. If following the aspect
-- ratio would lead to a total tile height greater than 4096, then the job
-- will be rejected. Must be divisible by 2.
--
-- 'intervalCadence', 'hlsImageBasedTrickPlaySettings_intervalCadence' - The cadence MediaConvert follows for generating thumbnails. If set to
-- FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in
-- the output (matching the GOP cadence). If set to FOLLOW_CUSTOM,
-- MediaConvert generates thumbnails according to the interval you specify
-- in thumbnailInterval.
--
-- 'thumbnailWidth', 'hlsImageBasedTrickPlaySettings_thumbnailWidth' - Width of each thumbnail within each tile image, in pixels. Default is
-- 312. Must be divisible by 8.
--
-- 'thumbnailInterval', 'hlsImageBasedTrickPlaySettings_thumbnailInterval' - Enter the interval, in seconds, that MediaConvert uses to generate
-- thumbnails. If the interval you enter doesn\'t align with the output
-- frame rate, MediaConvert automatically rounds the interval to align with
-- the output frame rate. For example, if the output frame rate is 29.97
-- frames per second and you enter 5, MediaConvert uses a 150 frame
-- interval to generate thumbnails.
--
-- 'tileHeight', 'hlsImageBasedTrickPlaySettings_tileHeight' - Number of thumbnails in each column of a tile image. Set a value between
-- 2 and 2048. Must be divisible by 2.
newHlsImageBasedTrickPlaySettings ::
  HlsImageBasedTrickPlaySettings
newHlsImageBasedTrickPlaySettings =
  HlsImageBasedTrickPlaySettings'
    { tileWidth =
        Prelude.Nothing,
      thumbnailHeight = Prelude.Nothing,
      intervalCadence = Prelude.Nothing,
      thumbnailWidth = Prelude.Nothing,
      thumbnailInterval = Prelude.Nothing,
      tileHeight = Prelude.Nothing
    }

-- | Number of thumbnails in each row of a tile image. Set a value between 1
-- and 512.
hlsImageBasedTrickPlaySettings_tileWidth :: Lens.Lens' HlsImageBasedTrickPlaySettings (Prelude.Maybe Prelude.Natural)
hlsImageBasedTrickPlaySettings_tileWidth = Lens.lens (\HlsImageBasedTrickPlaySettings' {tileWidth} -> tileWidth) (\s@HlsImageBasedTrickPlaySettings' {} a -> s {tileWidth = a} :: HlsImageBasedTrickPlaySettings)

-- | Height of each thumbnail within each tile image, in pixels. Leave blank
-- to maintain aspect ratio with thumbnail width. If following the aspect
-- ratio would lead to a total tile height greater than 4096, then the job
-- will be rejected. Must be divisible by 2.
hlsImageBasedTrickPlaySettings_thumbnailHeight :: Lens.Lens' HlsImageBasedTrickPlaySettings (Prelude.Maybe Prelude.Natural)
hlsImageBasedTrickPlaySettings_thumbnailHeight = Lens.lens (\HlsImageBasedTrickPlaySettings' {thumbnailHeight} -> thumbnailHeight) (\s@HlsImageBasedTrickPlaySettings' {} a -> s {thumbnailHeight = a} :: HlsImageBasedTrickPlaySettings)

-- | The cadence MediaConvert follows for generating thumbnails. If set to
-- FOLLOW_IFRAME, MediaConvert generates thumbnails for each IDR frame in
-- the output (matching the GOP cadence). If set to FOLLOW_CUSTOM,
-- MediaConvert generates thumbnails according to the interval you specify
-- in thumbnailInterval.
hlsImageBasedTrickPlaySettings_intervalCadence :: Lens.Lens' HlsImageBasedTrickPlaySettings (Prelude.Maybe HlsIntervalCadence)
hlsImageBasedTrickPlaySettings_intervalCadence = Lens.lens (\HlsImageBasedTrickPlaySettings' {intervalCadence} -> intervalCadence) (\s@HlsImageBasedTrickPlaySettings' {} a -> s {intervalCadence = a} :: HlsImageBasedTrickPlaySettings)

-- | Width of each thumbnail within each tile image, in pixels. Default is
-- 312. Must be divisible by 8.
hlsImageBasedTrickPlaySettings_thumbnailWidth :: Lens.Lens' HlsImageBasedTrickPlaySettings (Prelude.Maybe Prelude.Natural)
hlsImageBasedTrickPlaySettings_thumbnailWidth = Lens.lens (\HlsImageBasedTrickPlaySettings' {thumbnailWidth} -> thumbnailWidth) (\s@HlsImageBasedTrickPlaySettings' {} a -> s {thumbnailWidth = a} :: HlsImageBasedTrickPlaySettings)

-- | Enter the interval, in seconds, that MediaConvert uses to generate
-- thumbnails. If the interval you enter doesn\'t align with the output
-- frame rate, MediaConvert automatically rounds the interval to align with
-- the output frame rate. For example, if the output frame rate is 29.97
-- frames per second and you enter 5, MediaConvert uses a 150 frame
-- interval to generate thumbnails.
hlsImageBasedTrickPlaySettings_thumbnailInterval :: Lens.Lens' HlsImageBasedTrickPlaySettings (Prelude.Maybe Prelude.Double)
hlsImageBasedTrickPlaySettings_thumbnailInterval = Lens.lens (\HlsImageBasedTrickPlaySettings' {thumbnailInterval} -> thumbnailInterval) (\s@HlsImageBasedTrickPlaySettings' {} a -> s {thumbnailInterval = a} :: HlsImageBasedTrickPlaySettings)

-- | Number of thumbnails in each column of a tile image. Set a value between
-- 2 and 2048. Must be divisible by 2.
hlsImageBasedTrickPlaySettings_tileHeight :: Lens.Lens' HlsImageBasedTrickPlaySettings (Prelude.Maybe Prelude.Natural)
hlsImageBasedTrickPlaySettings_tileHeight = Lens.lens (\HlsImageBasedTrickPlaySettings' {tileHeight} -> tileHeight) (\s@HlsImageBasedTrickPlaySettings' {} a -> s {tileHeight = a} :: HlsImageBasedTrickPlaySettings)

instance Core.FromJSON HlsImageBasedTrickPlaySettings where
  parseJSON =
    Core.withObject
      "HlsImageBasedTrickPlaySettings"
      ( \x ->
          HlsImageBasedTrickPlaySettings'
            Prelude.<$> (x Core..:? "tileWidth")
            Prelude.<*> (x Core..:? "thumbnailHeight")
            Prelude.<*> (x Core..:? "intervalCadence")
            Prelude.<*> (x Core..:? "thumbnailWidth")
            Prelude.<*> (x Core..:? "thumbnailInterval")
            Prelude.<*> (x Core..:? "tileHeight")
      )

instance
  Prelude.Hashable
    HlsImageBasedTrickPlaySettings
  where
  hashWithSalt
    _salt
    HlsImageBasedTrickPlaySettings' {..} =
      _salt `Prelude.hashWithSalt` tileWidth
        `Prelude.hashWithSalt` thumbnailHeight
        `Prelude.hashWithSalt` intervalCadence
        `Prelude.hashWithSalt` thumbnailWidth
        `Prelude.hashWithSalt` thumbnailInterval
        `Prelude.hashWithSalt` tileHeight

instance
  Prelude.NFData
    HlsImageBasedTrickPlaySettings
  where
  rnf HlsImageBasedTrickPlaySettings' {..} =
    Prelude.rnf tileWidth
      `Prelude.seq` Prelude.rnf thumbnailHeight
      `Prelude.seq` Prelude.rnf intervalCadence
      `Prelude.seq` Prelude.rnf thumbnailWidth
      `Prelude.seq` Prelude.rnf thumbnailInterval
      `Prelude.seq` Prelude.rnf tileHeight

instance Core.ToJSON HlsImageBasedTrickPlaySettings where
  toJSON HlsImageBasedTrickPlaySettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tileWidth" Core..=) Prelude.<$> tileWidth,
            ("thumbnailHeight" Core..=)
              Prelude.<$> thumbnailHeight,
            ("intervalCadence" Core..=)
              Prelude.<$> intervalCadence,
            ("thumbnailWidth" Core..=)
              Prelude.<$> thumbnailWidth,
            ("thumbnailInterval" Core..=)
              Prelude.<$> thumbnailInterval,
            ("tileHeight" Core..=) Prelude.<$> tileHeight
          ]
      )
