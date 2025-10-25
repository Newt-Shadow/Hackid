.class Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/imagepicker/ImagePickerDelegate;-><init>(Landroid/app/Activity;Lio/flutter/plugins/imagepicker/ImageResizer;Lio/flutter/plugins/imagepicker/ImagePickerCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;->val$activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;->lambda$getFullImagePath$0(Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private static synthetic lambda$getFullImagePath$0(Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;->onPathReady(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getFullImagePath(Landroid/net/Uri;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;->val$activity:Landroid/app/Activity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p1, ""

    .line 14
    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    aput-object p1, v1, v2

    .line 17
    .line 18
    new-instance p1, Lio/flutter/plugins/imagepicker/j;

    .line 19
    .line 20
    invoke-direct {p1, p2}, Lio/flutter/plugins/imagepicker/j;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;)V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-static {v0, v1, p2, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public resolveFileProviderUriForFile(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;->val$activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroidx/core/content/b;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
