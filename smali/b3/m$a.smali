.class Lb3/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Lb3/m;


# direct methods
.method public constructor <init>(Lb3/m;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/m$a;->b:Lb3/m;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lb3/m$a;->a:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lb3/m$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/m$a;->b(I)V

    return-void
.end method

.method private synthetic b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/m$a;->b:Lb3/m;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lb3/m;->d(Lb3/m;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/m$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lb3/l;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lb3/l;-><init>(Lb3/m$a;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
