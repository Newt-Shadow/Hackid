.class final Lw1/a$c;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw1/a;->g(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDeviceState;)Lt1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Lw1/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw1/a$c;

    invoke-direct {v0}, Lw1/a$c;-><init>()V

    sput-object v0, Lw1/a$c;->e:Lw1/a$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/window/sidecar/SidecarDisplayFeature;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "$this$require"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 30
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/window/sidecar/SidecarDisplayFeature;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lw1/a$c;->a(Landroidx/window/sidecar/SidecarDisplayFeature;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
