.class public final synthetic Ld3/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/media/AudioTrack;

.field public final synthetic b:Ly4/g;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Ly4/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/h0;->a:Landroid/media/AudioTrack;

    iput-object p2, p0, Ld3/h0;->b:Ly4/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/h0;->a:Landroid/media/AudioTrack;

    iget-object v1, p0, Ld3/h0;->b:Ly4/g;

    invoke-static {v0, v1}, Ld3/i0;->f(Landroid/media/AudioTrack;Ly4/g;)V

    return-void
.end method
