.class public final synthetic Lrf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Lrf/c;


# direct methods
.method public synthetic constructor <init>(Lrf/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrf/b;->a:Lrf/c;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/b;->a:Lrf/c;

    invoke-static {v0, p1}, Lrf/c;->m(Lrf/c;I)V

    return-void
.end method
