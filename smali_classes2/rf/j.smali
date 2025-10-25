.class public final synthetic Lrf/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Lrf/k;


# direct methods
.method public synthetic constructor <init>(Lrf/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrf/j;->a:Lrf/k;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/j;->a:Lrf/k;

    invoke-static {v0, p1}, Lrf/k;->m(Lrf/k;I)V

    return-void
.end method
