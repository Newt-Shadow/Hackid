.class abstract Ljp/espresso3389/content_resolver/ByteBufferHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "dbufhelper"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static native free(J)V
.end method

.method public static native malloc(J)J
.end method

.method public static native newDirectBuffer(JJ)Ljava/nio/ByteBuffer;
.end method
