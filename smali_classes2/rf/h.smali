.class public final synthetic Lrf/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field public final synthetic a:Lrf/s;


# direct methods
.method public synthetic constructor <init>(Lrf/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrf/h;->a:Lrf/s;

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/h;->a:Lrf/s;

    invoke-static {v0, p1, p2}, Lrf/i;->n(Lrf/s;Landroid/media/MediaPlayer;I)V

    return-void
.end method
