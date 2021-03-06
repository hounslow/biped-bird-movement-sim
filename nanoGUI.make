# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

CC = clang
CXX = clang++
AR = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),debug32)
  OBJDIR     = obj/x32/Debug/nanoGUI
  TARGETDIR  = lib
  TARGET     = $(TARGETDIR)/libnanoGUI.dylib
  DEFINES   += -DDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS
  INCLUDES  += -I. -Inanogui -Iinclude/eigen -Iinclude/glfw/include -Iinclude/nanovg/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32 -fPIC -ggdb -fPIC -std=c++0x -ggdb -Wunused-value -Wshadow -Wreorder -Wsign-compare -Wall -fPIC
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -Llib -L. -dynamiclib -m32 -L/usr/lib32 -stdlib=libc++ -Wl,-rpath,/Users/matthewhounslow/Desktop/cs426_a2/lib -install_name @rpath/libnanoGUI.dylib
  LDDEPS    += lib/libglfw.dylib lib/libnanovg.dylib
  LIBS      += $(LDDEPS) -framework OpenGL -framework Cocoa -ldl -lpthread
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = obj/x32/Release/nanoGUI
  TARGETDIR  = lib
  TARGET     = $(TARGETDIR)/libnanoGUI.dylib
  DEFINES   += -DNDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS
  INCLUDES  += -I. -Inanogui -Iinclude/eigen -Iinclude/glfw/include -Iinclude/nanovg/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -O2 -m32 -fPIC -ggdb -fPIC -std=c++0x -ggdb -Wunused-value -Wshadow -Wreorder -Wsign-compare -Wall -fPIC
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -Llib -L. -dynamiclib -m32 -L/usr/lib32 -stdlib=libc++ -Wl,-rpath,/Users/matthewhounslow/Desktop/cs426_a2/lib -install_name @rpath/libnanoGUI.dylib
  LDDEPS    += lib/libglfw.dylib lib/libnanovg.dylib
  LIBS      += $(LDDEPS) -framework OpenGL -framework Cocoa -ldl -lpthread
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/nanoGUI
  TARGETDIR  = lib
  TARGET     = $(TARGETDIR)/libnanoGUI.dylib
  DEFINES   += -DDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS
  INCLUDES  += -I. -Inanogui -Iinclude/eigen -Iinclude/glfw/include -Iinclude/nanovg/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64 -fPIC -ggdb -fPIC -std=c++0x -ggdb -Wunused-value -Wshadow -Wreorder -Wsign-compare -Wall -fPIC
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -Llib -L. -dynamiclib -m64 -L/usr/lib64 -stdlib=libc++ -Wl,-rpath,/Users/matthewhounslow/Desktop/cs426_a2/lib -install_name @rpath/libnanoGUI.dylib
  LDDEPS    += lib/libglfw.dylib lib/libnanovg.dylib
  LIBS      += $(LDDEPS) -framework OpenGL -framework Cocoa -ldl -lpthread
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release/nanoGUI
  TARGETDIR  = lib
  TARGET     = $(TARGETDIR)/libnanoGUI.dylib
  DEFINES   += -DNDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS
  INCLUDES  += -I. -Inanogui -Iinclude/eigen -Iinclude/glfw/include -Iinclude/nanovg/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -O2 -m64 -fPIC -ggdb -fPIC -std=c++0x -ggdb -Wunused-value -Wshadow -Wreorder -Wsign-compare -Wall -fPIC
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -Llib -L. -dynamiclib -m64 -L/usr/lib64 -stdlib=libc++ -Wl,-rpath,/Users/matthewhounslow/Desktop/cs426_a2/lib -install_name @rpath/libnanoGUI.dylib
  LDDEPS    += lib/libglfw.dylib lib/libnanovg.dylib
  LIBS      += $(LDDEPS) -framework OpenGL -framework Cocoa -ldl -lpthread
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/button.o \
	$(OBJDIR)/checkbox.o \
	$(OBJDIR)/colorpicker.o \
	$(OBJDIR)/colorwheel.o \
	$(OBJDIR)/combobox.o \
	$(OBJDIR)/common.o \
	$(OBJDIR)/example1.o \
	$(OBJDIR)/glcanvas.o \
	$(OBJDIR)/glutil.o \
	$(OBJDIR)/graph.o \
	$(OBJDIR)/imagepanel.o \
	$(OBJDIR)/imageview.o \
	$(OBJDIR)/label.o \
	$(OBJDIR)/layout.o \
	$(OBJDIR)/messagedialog.o \
	$(OBJDIR)/nanogui_resources.o \
	$(OBJDIR)/popup.o \
	$(OBJDIR)/popupbutton.o \
	$(OBJDIR)/progressbar.o \
	$(OBJDIR)/screen.o \
	$(OBJDIR)/serializer.o \
	$(OBJDIR)/slider.o \
	$(OBJDIR)/stackedwidget.o \
	$(OBJDIR)/tabheader.o \
	$(OBJDIR)/tabwidget.o \
	$(OBJDIR)/textbox.o \
	$(OBJDIR)/theme.o \
	$(OBJDIR)/vscrollpanel.o \
	$(OBJDIR)/widget.o \
	$(OBJDIR)/window.o \
	$(OBJDIR)/darwin.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking nanoGUI
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning nanoGUI
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -MMD -MP $(DEFINES) $(INCLUDES) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/button.o: nanogui/src/button.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/checkbox.o: nanogui/src/checkbox.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/colorpicker.o: nanogui/src/colorpicker.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/colorwheel.o: nanogui/src/colorwheel.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/combobox.o: nanogui/src/combobox.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/common.o: nanogui/src/common.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/example1.o: nanogui/src/example1.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/glcanvas.o: nanogui/src/glcanvas.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/glutil.o: nanogui/src/glutil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/graph.o: nanogui/src/graph.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/imagepanel.o: nanogui/src/imagepanel.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/imageview.o: nanogui/src/imageview.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/label.o: nanogui/src/label.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/layout.o: nanogui/src/layout.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/messagedialog.o: nanogui/src/messagedialog.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/nanogui_resources.o: nanogui/src/nanogui_resources.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/popup.o: nanogui/src/popup.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/popupbutton.o: nanogui/src/popupbutton.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/progressbar.o: nanogui/src/progressbar.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/screen.o: nanogui/src/screen.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/serializer.o: nanogui/src/serializer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/slider.o: nanogui/src/slider.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/stackedwidget.o: nanogui/src/stackedwidget.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/tabheader.o: nanogui/src/tabheader.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/tabwidget.o: nanogui/src/tabwidget.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/textbox.o: nanogui/src/textbox.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/theme.o: nanogui/src/theme.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/vscrollpanel.o: nanogui/src/vscrollpanel.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/widget.o: nanogui/src/widget.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/window.o: nanogui/src/window.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/darwin.o: nanogui/src/darwin.mm
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
