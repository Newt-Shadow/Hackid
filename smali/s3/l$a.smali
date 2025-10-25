.class public final Ls3/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ls3/s;

.field public final b:Landroid/media/MediaFormat;

.field public final c:Lb3/x1;

.field public final d:Landroid/view/Surface;

.field public final e:Landroid/media/MediaCrypto;

.field public final f:I


# direct methods
.method private constructor <init>(Ls3/s;Landroid/media/MediaFormat;Lb3/x1;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls3/l$a;->a:Ls3/s;

    .line 5
    .line 6
    iput-object p2, p0, Ls3/l$a;->b:Landroid/media/MediaFormat;

    .line 7
    .line 8
    iput-object p3, p0, Ls3/l$a;->c:Lb3/x1;

    .line 9
    .line 10
    iput-object p4, p0, Ls3/l$a;->d:Landroid/view/Surface;

    .line 11
    .line 12
    iput-object p5, p0, Ls3/l$a;->e:Landroid/media/MediaCrypto;

    .line 13
    .line 14
    iput p6, p0, Ls3/l$a;->f:I

    .line 15
    .line 16
    return-void
.end method

.method public static a(Ls3/s;Landroid/media/MediaFormat;Lb3/x1;Landroid/media/MediaCrypto;)Ls3/l$a;
    .locals 8

    .line 1
    new-instance v7, Ls3/l$a;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    move-object v0, v7

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Ls3/l$a;-><init>(Ls3/s;Landroid/media/MediaFormat;Lb3/x1;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method

.method public static b(Ls3/s;Landroid/media/MediaFormat;Lb3/x1;Landroid/view/Surface;Landroid/media/MediaCrypto;)Ls3/l$a;
    .locals 8

    .line 1
    new-instance v7, Ls3/l$a;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Ls3/l$a;-><init>(Ls3/s;Landroid/media/MediaFormat;Lb3/x1;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method
