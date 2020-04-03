.class Lcom/android/server/wallpaper/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sMaxTextureSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const-class v1, Lcom/android/server/wallpaper/GLHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/wallpaper/GLHelper;->TAG:Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "sys.max_texture_size"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "maxTextureSize":I
    if-lez v0, :cond_0

    .end local v0    # "maxTextureSize":I
    :goto_0
    sput v0, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    .line 57
    return-void

    .line 63
    .restart local v0    # "maxTextureSize":I
    :cond_0
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->retrieveTextureSizeFromGL()I

    move-result v0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxTextureSize()I
    .locals 1

    .prologue
    .line 145
    sget v0, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    return v0
.end method

.method private static retrieveTextureSizeFromGL()I
    .locals 18

    .prologue
    .line 74
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 75
    .local v1, "eglDisplay":Landroid/opengl/EGLDisplay;
    if-eqz v1, :cond_0

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v1, v3, :cond_1

    .line 76
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "eglGetDisplay failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 77
    .local v15, "err":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v15    # "err":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 139
    .local v11, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/server/wallpaper/GLHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Retrieve from GL failed"

    invoke-static {v3, v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    const v3, 0x7fffffff

    return v3

    .line 80
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    :try_start_1
    invoke-static {v1, v3, v5, v6, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "eglInitialize failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 82
    .restart local v15    # "err":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    .end local v15    # "err":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    .line 86
    .local v12, "eglConfig":Landroid/opengl/EGLConfig;
    const/4 v3, 0x1

    new-array v7, v3, [I

    .line 87
    .local v7, "configsCount":[I
    const/4 v3, 0x1

    new-array v4, v3, [Landroid/opengl/EGLConfig;

    .line 88
    .local v4, "configs":[Landroid/opengl/EGLConfig;
    const/16 v3, 0x11

    new-array v2, v3, [I

    .local v2, "configSpec":[I
    fill-array-data v2, :array_0

    .line 100
    const/4 v3, 0x0

    .line 101
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 102
    const/4 v8, 0x0

    .line 100
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "eglChooseConfig failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 104
    .restart local v15    # "err":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    .end local v15    # "err":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    aget v3, v7, v3

    if-lez v3, :cond_4

    .line 106
    const/4 v3, 0x0

    aget-object v12, v4, v3

    .line 109
    .end local v12    # "eglConfig":Landroid/opengl/EGLConfig;
    :cond_4
    if-nez v12, :cond_5

    .line 110
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "eglConfig not initialized!"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    :cond_5
    const/16 v3, 0x3098

    const/4 v5, 0x2

    const/16 v6, 0x3038

    filled-new-array {v3, v5, v6}, [I

    move-result-object v9

    .line 115
    .local v9, "attr_list":[I
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v5, 0x0

    .line 114
    invoke-static {v1, v12, v3, v9, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v13

    .line 117
    .local v13, "eglContext":Landroid/opengl/EGLContext;
    if-eqz v13, :cond_6

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v13, v3, :cond_7

    .line 118
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "eglCreateContext failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 119
    .restart local v15    # "err":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    .end local v15    # "err":Ljava/lang/String;
    :cond_7
    const/16 v3, 0x3057

    const/4 v5, 0x1

    const/16 v6, 0x3056

    const/4 v8, 0x1

    const/16 v17, 0x3038

    move/from16 v0, v17

    filled-new-array {v3, v5, v6, v8, v0}, [I

    move-result-object v10

    .line 125
    .local v10, "attrs":[I
    const/4 v3, 0x0

    invoke-static {v1, v12, v10, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v14

    .line 126
    .local v14, "eglSurface":Landroid/opengl/EGLSurface;
    invoke-static {v1, v14, v14, v13}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 129
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 130
    .local v16, "maxSize":[I
    const/16 v3, 0xd33

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v3, v0, v5}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 133
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v3, v5, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 134
    invoke-static {v1, v14}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 135
    invoke-static {v1, v13}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 136
    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 137
    const/4 v3, 0x0

    aget v3, v16, v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    .line 88
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3027
        0x3038
        0x3038
    .end array-data
.end method
