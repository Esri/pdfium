project "pdfium"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "5149C8A4-ADEA-47BD-BD79-BA7A8C5B0A89"

flags { "NoPCH" }

includedirs {
  ".",
  _3RDPARTY_DIR .. "/freetype/include",
  _3RDPARTY_DIR .. "/freetype/include/freetype",
}

defines {
  "OPJ_STATIC",
}

files {
  "core/src/fdrm/crypto/fx_crypt.cpp",
  "core/src/fdrm/crypto/fx_crypt_aes.cpp",
  "core/src/fdrm/crypto/fx_crypt_sha.cpp",
  "core/src/fpdfapi/fpdf_basic_module.cpp",
  "core/src/fpdfapi/fpdf_cmaps/CNS1/*.cpp",
  "core/src/fpdfapi/fpdf_cmaps/fpdf_cmaps.cpp",
  "core/src/fpdfapi/fpdf_cmaps/GB1/*.cpp",
  "core/src/fpdfapi/fpdf_cmaps/Japan1/*.cpp",
  "core/src/fpdfapi/fpdf_cmaps/Korea1/*.cpp",
  "core/src/fpdfapi/fpdf_edit/fpdf_edit_doc.cpp",
  "core/src/fpdfapi/fpdf_font/fpdf_font.cpp",
  "core/src/fpdfapi/fpdf_font/fpdf_font_charset.cpp",
  "core/src/fpdfapi/fpdf_font/fpdf_font_cid.cpp",
  "core/src/fpdfapi/fpdf_font/ttgsubtable.cpp",
  "core/src/fpdfapi/fpdf_page/fpdf_page.cpp",
  "core/src/fpdfapi/fpdf_page/fpdf_page_colors.cpp",
  "core/src/fpdfapi/fpdf_page/fpdf_page_doc.cpp",
  "core/src/fpdfapi/fpdf_page/fpdf_page_func.cpp",
  "core/src/fpdfapi/fpdf_page/fpdf_page_graph_state.cpp",
  "core/src/fpdfapi/fpdf_page/fpdf_page_image.cpp",
  "core/src/fpdfapi/fpdf_page/fpdf_page_parser.cpp",
  "core/src/fpdfapi/fpdf_page/fpdf_page_parser_old.cpp",
  "core/src/fpdfapi/fpdf_page/fpdf_page_path.cpp",
  "core/src/fpdfapi/fpdf_page/fpdf_page_pattern.cpp",
  "core/src/fpdfapi/fpdf_parser/fpdf_parser_decode.cpp",
  "core/src/fpdfapi/fpdf_parser/fpdf_parser_document.cpp",
  "core/src/fpdfapi/fpdf_parser/fpdf_parser_encrypt.cpp",
  "core/src/fpdfapi/fpdf_parser/fpdf_parser_fdf.cpp",
  "core/src/fpdfapi/fpdf_parser/fpdf_parser_filters.cpp",
  "core/src/fpdfapi/fpdf_parser/fpdf_parser_objects.cpp",
  "core/src/fpdfapi/fpdf_parser/fpdf_parser_parser.cpp",
  "core/src/fpdfapi/fpdf_parser/fpdf_parser_utility.cpp",
  "core/src/fpdfapi/fpdf_render/fpdf_render.cpp",
  "core/src/fpdfapi/fpdf_render/fpdf_render_cache.cpp",
  "core/src/fpdfapi/fpdf_render/fpdf_render_image.cpp",
  "core/src/fpdfapi/fpdf_render/fpdf_render_loadimage.cpp",
  "core/src/fpdfapi/fpdf_render/fpdf_render_pattern.cpp",
  "core/src/fpdfapi/fpdf_render/fpdf_render_text.cpp",
  "core/src/fpdfdoc/doc_annot.cpp",
  "core/src/fpdfdoc/doc_ap.cpp",
  "core/src/fpdfdoc/doc_basic.cpp",
  "core/src/fpdfdoc/doc_form.cpp",
  "core/src/fpdfdoc/doc_formcontrol.cpp",
  "core/src/fpdfdoc/doc_formfield.cpp",
  "core/src/fpdfdoc/doc_metadata.cpp",
  "core/src/fpdfdoc/doc_ocg.cpp",
  "core/src/fpdfdoc/doc_utils.cpp",
  "core/src/fpdfdoc/doc_viewerPreferences.cpp",
  "core/src/fpdfdoc/doc_vt.cpp",
  "core/src/fxcodec/codec/fx_codec.cpp",
  "core/src/fxcodec/codec/fx_codec_fax.cpp",
  "core/src/fxcodec/codec/fx_codec_flate.cpp",
  "core/src/fxcodec/codec/fx_codec_icc.cpp",
  "core/src/fxcodec/codec/fx_codec_jbig.cpp",
  "core/src/fxcodec/codec/fx_codec_jpeg.cpp",
  "core/src/fxcodec/codec/fx_codec_jpx_opj.cpp",
  "core/src/fxcodec/jbig2/JBig2_ArithIntDecoder.cpp",
  "core/src/fxcodec/jbig2/JBig2_Context.cpp",
  "core/src/fxcodec/jbig2/JBig2_GeneralDecoder.cpp",
  "core/src/fxcodec/jbig2/JBig2_HuffmanDecoder.cpp",
  "core/src/fxcodec/jbig2/JBig2_HuffmanTable.cpp",
  "core/src/fxcodec/jbig2/JBig2_Image.cpp",
  "core/src/fxcodec/jbig2/JBig2_Object.cpp",
  "core/src/fxcodec/jbig2/JBig2_PatternDict.cpp",
  "core/src/fxcodec/jbig2/JBig2_Segment.cpp",
  "core/src/fxcodec/jbig2/JBig2_SymbolDict.cpp",
  "core/src/fxcrt/fx_basic_array.cpp",
  "core/src/fxcrt/fx_basic_bstring.cpp",
  "core/src/fxcrt/fx_basic_buffer.cpp",
  "core/src/fxcrt/fx_basic_coords.cpp",
  "core/src/fxcrt/fx_basic_gcc.cpp",
  "core/src/fxcrt/fx_basic_list.cpp",
  "core/src/fxcrt/fx_basic_maps.cpp",
  "core/src/fxcrt/fx_basic_memmgr.cpp",
  "core/src/fxcrt/fx_basic_plex.cpp",
  "core/src/fxcrt/fx_basic_utf.cpp",
  "core/src/fxcrt/fx_basic_util.cpp",
  "core/src/fxcrt/fx_basic_wstring.cpp",
  "core/src/fxcrt/fx_extension.cpp",
  "core/src/fxcrt/fx_xml_composer.cpp",
  "core/src/fxcrt/fx_xml_parser.cpp",
  "core/src/fxge/agg/src/fx_agg_driver.cpp",
  "core/src/fxge/dib/fx_dib_composite.cpp",
  "core/src/fxge/dib/fx_dib_convert.cpp",
  "core/src/fxge/dib/fx_dib_engine.cpp",
  "core/src/fxge/dib/fx_dib_main.cpp",
  "core/src/fxge/dib/fx_dib_transform.cpp",
  "core/src/fxge/fontdata/chromefontdata/*.c",
  "core/src/fxge/freetype/fx_freetype.c",
  "core/src/fxge/ge/fx_ge.cpp",
  "core/src/fxge/ge/fx_ge_device.cpp",
  "core/src/fxge/ge/fx_ge_font.cpp",
  "core/src/fxge/ge/fx_ge_fontmap.cpp",
  "core/src/fxge/ge/fx_ge_path.cpp",
  "core/src/fxge/ge/fx_ge_ps.cpp",
  "core/src/fxge/ge/fx_ge_text.cpp",
  "fpdfsdk/src/fpdf_ext.cpp",
  "fpdfsdk/src/fpdfview.cpp",
  "fpdfsdk/src/fsdk_rendercontext.cpp",
  "third_party/agg23/agg_curves.cpp",
  "third_party/agg23/agg_path_storage.cpp",
  "third_party/agg23/agg_rasterizer_scanline_aa.cpp",
  "third_party/agg23/agg_vcgen_dash.cpp",
  "third_party/agg23/agg_vcgen_stroke.cpp",
  "third_party/lcms2-2.6/src/cmscnvrt.c",
  "third_party/lcms2-2.6/src/cmserr.c",
  "third_party/lcms2-2.6/src/cmsgamma.c",
  "third_party/lcms2-2.6/src/cmsgmt.c",
  "third_party/lcms2-2.6/src/cmshalf.c",
  "third_party/lcms2-2.6/src/cmsintrp.c",
  "third_party/lcms2-2.6/src/cmsio0.c",
  "third_party/lcms2-2.6/src/cmsio1.c",
  "third_party/lcms2-2.6/src/cmslut.c",
  "third_party/lcms2-2.6/src/cmsmd5.c",
  "third_party/lcms2-2.6/src/cmsmtrx.c",
  "third_party/lcms2-2.6/src/cmsnamed.c",
  "third_party/lcms2-2.6/src/cmsopt.c",
  "third_party/lcms2-2.6/src/cmspack.c",
  "third_party/lcms2-2.6/src/cmspcs.c",
  "third_party/lcms2-2.6/src/cmsplugin.c",
  "third_party/lcms2-2.6/src/cmssamp.c",
  "third_party/lcms2-2.6/src/cmstypes.c",
  "third_party/lcms2-2.6/src/cmsvirt.c",
  "third_party/lcms2-2.6/src/cmswtpnt.c",
  "third_party/lcms2-2.6/src/cmsxform.c",
  "third_party/libjpeg/fpdfapi_jcapimin.c",
  "third_party/libjpeg/fpdfapi_jcapistd.c",
  "third_party/libjpeg/fpdfapi_jccoefct.c",
  "third_party/libjpeg/fpdfapi_jccolor.c",
  "third_party/libjpeg/fpdfapi_jcdctmgr.c",
  "third_party/libjpeg/fpdfapi_jchuff.c",
  "third_party/libjpeg/fpdfapi_jcinit.c",
  "third_party/libjpeg/fpdfapi_jcmainct.c",
  "third_party/libjpeg/fpdfapi_jcmarker.c",
  "third_party/libjpeg/fpdfapi_jcmaster.c",
  "third_party/libjpeg/fpdfapi_jcomapi.c",
  "third_party/libjpeg/fpdfapi_jcparam.c",
  "third_party/libjpeg/fpdfapi_jcphuff.c",
  "third_party/libjpeg/fpdfapi_jcprepct.c",
  "third_party/libjpeg/fpdfapi_jcsample.c",
  "third_party/libjpeg/fpdfapi_jdapimin.c",
  "third_party/libjpeg/fpdfapi_jdapistd.c",
  "third_party/libjpeg/fpdfapi_jdcoefct.c",
  "third_party/libjpeg/fpdfapi_jdcolor.c",
  "third_party/libjpeg/fpdfapi_jddctmgr.c",
  "third_party/libjpeg/fpdfapi_jdhuff.c",
  "third_party/libjpeg/fpdfapi_jdinput.c",
  "third_party/libjpeg/fpdfapi_jdmainct.c",
  "third_party/libjpeg/fpdfapi_jdmarker.c",
  "third_party/libjpeg/fpdfapi_jdmaster.c",
  "third_party/libjpeg/fpdfapi_jdmerge.c",
  "third_party/libjpeg/fpdfapi_jdphuff.c",
  "third_party/libjpeg/fpdfapi_jdpostct.c",
  "third_party/libjpeg/fpdfapi_jdsample.c",
  "third_party/libjpeg/fpdfapi_jfdctfst.c",
  "third_party/libjpeg/fpdfapi_jfdctint.c",
  "third_party/libjpeg/fpdfapi_jidctfst.c",
  "third_party/libjpeg/fpdfapi_jidctint.c",
  "third_party/libjpeg/fpdfapi_jidctred.c",
  "third_party/libjpeg/fpdfapi_jmemmgr.c",
  "third_party/libjpeg/fpdfapi_jmemnobs.c",
  "third_party/libjpeg/fpdfapi_jutils.c",
  "third_party/libopenjpeg20/bio.c",
  "third_party/libopenjpeg20/cio.c",
  "third_party/libopenjpeg20/dwt.c",
  "third_party/libopenjpeg20/event.c",
  "third_party/libopenjpeg20/function_list.c",
  "third_party/libopenjpeg20/image.c",
  "third_party/libopenjpeg20/invert.c",
  "third_party/libopenjpeg20/j2k.c",
  "third_party/libopenjpeg20/jp2.c",
  "third_party/libopenjpeg20/mct.c",
  "third_party/libopenjpeg20/mqc.c",
  "third_party/libopenjpeg20/openjpeg.c",
  "third_party/libopenjpeg20/pi.c",
  "third_party/libopenjpeg20/raw.c",
  "third_party/libopenjpeg20/t1.c",
  "third_party/libopenjpeg20/t2.c",
  "third_party/libopenjpeg20/tcd.c",
  "third_party/libopenjpeg20/tgt.c",
  "third_party/zlib_v128/*.c",
}

if (_PLATFORM_ANDROID) then
  buildoptions {
    "-Wno-register",
  }

  files {
    "core/src/fxge/android/fpf_skiafont.cpp",
    "core/src/fxge/android/fpf_skiafontmgr.cpp",
    "core/src/fxge/android/fpf_skiamodule.cpp",
    "core/src/fxge/android/fx_android_font.cpp",
    "core/src/fxge/android/fx_android_imp.cpp",
  }
end

if (_PLATFORM_IOS) then
  buildoptions {
    "-Wno-register",
  }

  files {
    "core/src/fxge/apple/fx_apple_platform.cpp",
    "core/src/fxge/apple/fx_mac_imp.cpp",
    "core/src/fxge/apple/fx_quartz_device.cpp",
  }
end

if (_PLATFORM_LINUX) then
  buildoptions {
    "-Wno-register",
  }

  files {
    "core/src/fxcrt/fxcrt_posix.cpp",
    "core/src/fxge/ge/fx_ge_linux.cpp",
  }
end

if (_PLATFORM_MACOS) then
  buildoptions {
    "-Wno-register",
  }

  files {
    "core/src/fxge/apple/fx_apple_platform.cpp",
    "core/src/fxge/apple/fx_mac_imp.cpp",
    "core/src/fxge/apple/fx_quartz_device.cpp",
  }
end

if (_PLATFORM_WINDOWS) then
  files {
    "core/src/fxcrt/fxcrt_windows.cpp",
    "core/src/fxge/win32/fx_win32_device.cpp",
    "core/src/fxge/win32/fx_win32_dib.cpp",
    "core/src/fxge/win32/fx_win32_dwrite.cpp",
    "core/src/fxge/win32/fx_win32_gdipext.cpp",
    "core/src/fxge/win32/fx_win32_print.cpp",
  }
end
