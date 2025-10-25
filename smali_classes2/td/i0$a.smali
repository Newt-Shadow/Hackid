.class public final Ltd/i0$a;
.super Lad/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lad/f;->h0:Lad/f$b;

    new-instance v1, Ltd/h0;

    invoke-direct {v1}, Ltd/h0;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lad/b;-><init>(Lad/i$c;Lid/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltd/i0$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lad/i$b;)Ltd/i0;
    .locals 0

    .line 1
    invoke-static {p0}, Ltd/i0$a;->d(Lad/i$b;)Ltd/i0;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lad/i$b;)Ltd/i0;
    .locals 1

    .line 1
    instance-of v0, p0, Ltd/i0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ltd/i0;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method
