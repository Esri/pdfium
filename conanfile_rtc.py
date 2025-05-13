from conans import ConanFile


class PdfiumConan(ConanFile):
    name = "pdfium"
    version = "chromium2468"
    url = "https://devtopia.esri.com/3rdparty/pdfium/tree/runtimecore"
    license = "https://devtopia.esri.com/3rdparty/pdfium/blob/runtimecore/LICENSE"
    description = "Reading, parsing, and rasterizing the pages of a .pdf file to .ppm or .png output image files."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/pdfium/"

        # headers
        self.copy("*.h*", src=base + "core/include/fpdfapi", dst=relative + "core/include/fpdfapi")
        self.copy("*.h*", src=base + "core/include/fpdfdoc", dst=relative + "core/include/fpdfdoc")
        self.copy("*.h*", src=base + "core/include/fxcrt", dst=relative + "core/include/fxcrt")
        self.copy("*.h*", src=base + "core/include/fxge", dst=relative + "core/include/fxge")
        self.copy("*.h*", src=base + "public", dst=relative + "public")

        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)
