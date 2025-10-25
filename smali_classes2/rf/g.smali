.class public final synthetic Lrf/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:Lrf/s;


# direct methods
.method public synthetic constructor <init>(Lrf/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrf/g;->a:Lrf/s;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/g;->a:Lrf/s;

    invoke-static {v0, p1, p2, p3}, Lrf/i;->m(Lrf/s;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
