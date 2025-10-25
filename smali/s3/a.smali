.class public final synthetic Ls3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:Ls3/b;

.field public final synthetic b:Ls3/l$c;


# direct methods
.method public synthetic constructor <init>(Ls3/b;Ls3/l$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/a;->a:Ls3/b;

    iput-object p2, p0, Ls3/a;->b:Ls3/l$c;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Ls3/a;->a:Ls3/b;

    iget-object v1, p0, Ls3/a;->b:Ls3/l$c;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Ls3/b;->o(Ls3/b;Ls3/l$c;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
