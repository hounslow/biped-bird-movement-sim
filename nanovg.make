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
  OBJDIR     = obj/x32/Debug/nanovg
  TARGETDIR  = lib
  TARGET     = $(TARGETDIR)/libnanovg.dylib
  DEFINES   += -DDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS
  INCLUDES  += -I. -Iinlucde/nanovg -Iinclude/eigen -Iinclude/glfw/include -Iinclude/nanovg/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32 -fPIC -ggdb -fPIC -ggdb -Wunused-value -Wshadow -Wreorder -Wsign-compare -Wall -fPIC
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -Llib -L. -dynamiclib -m32 -L/usr/lib32 -stdlib=libc++ -Wl,-rpath,/Users/matthewhounslow/Desktop/cs426_a2/lib -install_name @rpath/libnanovg.dylib
  LDDEPS    += lib/libglfw.dylib
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
  OBJDIR     = obj/x32/Release/nanovg
  TARGETDIR  = lib
  TARGET     = $(TARGETDIR)/libnanovg.dylib
  DEFINES   += -DNDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS
  INCLUDES  += -I. -Iinlucde/nanovg -Iinclude/eigen -Iinclude/glfw/include -Iinclude/nanovg/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -O2 -m32 -fPIC -ggdb -fPIC -ggdb -Wunused-value -Wshadow -Wreorder -Wsign-compare -Wall -fPIC
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -Llib -L. -dynamiclib -m32 -L/usr/lib32 -stdlib=libc++ -Wl,-rpath,/Users/matthewhounslow/Desktop/cs426_a2/lib -install_name @rpath/libnanovg.dylib
  LDDEPS    += lib/libglfw.dylib
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
  OBJDIR     = obj/x64/Debug/nanovg
  TARGETDIR  = lib
  TARGET     = $(TARGETDIR)/libnanovg.dylib
  DEFINES   += -DDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS
  INCLUDES  += -I. -Iinlucde/nanovg -Iinclude/eigen -Iinclude/glfw/include -Iinclude/nanovg/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64 -fPIC -ggdb -fPIC -ggdb -Wunused-value -Wshadow -Wreorder -Wsign-compare -Wall -fPIC
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -Llib -L. -dynamiclib -m64 -L/usr/lib64 -stdlib=libc++ -Wl,-rpath,/Users/matthewhounslow/Desktop/cs426_a2/lib -install_name @rpath/libnanovg.dylib
  LDDEPS    += lib/libglfw.dylib
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
  OBJDIR     = obj/x64/Release/nanovg
  TARGETDIR  = lib
  TARGET     = $(TARGETDIR)/libnanovg.dylib
  DEFINES   += -DNDEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS
  INCLUDES  += -I. -Iinlucde/nanovg -Iinclude/eigen -Iinclude/glfw/include -Iinclude/nanovg/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -O2 -m64 -fPIC -ggdb -fPIC -ggdb -Wunused-value -Wshadow -Wreorder -Wsign-compare -Wall -fPIC
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -Llib -L. -dynamiclib -m64 -L/usr/lib64 -stdlib=libc++ -Wl,-rpath,/Users/matthewhounslow/Desktop/cs426_a2/lib -install_name @rpath/libnanovg.dylib
  LDDEPS    += lib/libglfw.dylib
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
	$(OBJDIR)/nanovg.o \

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
	@echo Linking nanovg
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
	@echo Cleaning nanovg
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

$(OBJDIR)/nanovg.o: include/nanovg/src/nanovg.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif