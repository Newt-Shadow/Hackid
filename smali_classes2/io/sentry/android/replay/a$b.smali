.class public final Lio/sentry/android/replay/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/a$b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lio/sentry/android/replay/a$b;)Lrd/l;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/a$b;->b()Lrd/l;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b()Lrd/l;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/android/replay/a;->access$getSnakecasePattern$delegate$cp()Lxc/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lrd/l;

    .line 10
    .line 11
    return-object v0
.end method
