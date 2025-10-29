from conans import ConanFile


class PdfiumConan(ConanFile):
    name = "pdfium"
    version = "chromium7391"
    url = "https://github.com/Esri/pdfium/tree/runtimecore"
    license = "https://github.com/Esri/pdfium/blob/runtimecore/LICENSE"
    description = "Reading, parsing, and rasterizing the pages of a .pdf file to .ppm or .png output image files."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/pdfium/"

        # headers
        self.copy("*.h*", src=base + "build", dst=relative + "build")
        self.copy("*.h*", src=base + "constants", dst=relative + "constants")
        self.copy("*.h*", src=base + "core/fpdfapi", dst=relative + "core/fpdfapi")
        self.copy("*.h*", src=base + "core/fpdfdoc", dst=relative + "core/fpdfdoc")
        self.copy("*.h*", src=base + "core/fxcrt", dst=relative + "core/fxcrt")
        self.copy("*.h*", src=base + "core/fxge", dst=relative + "core/fxge")
        self.copy("*.h*", src=base + "fpdfsdk", dst=relative + "fpdfsdk")
        self.copy("*.h*", src=base + "public", dst=relative + "public")
        self.copy("*.h*", src=base + "third_party/abseil-cpp", dst=relative + "third_party/abseil-cpp")

        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)
