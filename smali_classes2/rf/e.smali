.class public final synthetic Lrf/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lrf/s;


# direct methods
.method public synthetic constructor <init>(Lrf/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrf/e;->a:Lrf/s;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/e;->a:Lrf/s;

    invoke-static {v0, p1}, Lrf/i;->l(Lrf/s;Landroid/media/MediaPlayer;)V

    return-void
.end method
