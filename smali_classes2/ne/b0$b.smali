.class public final Lne/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne/b0;
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
    invoke-direct {p0}, Lne/b0$b;-><init>()V

    return-void
.end method

.method public static synthetic c(Lne/b0$b;[BLne/v;ILjava/lang/Object;)Lne/b0;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lne/b0$b;->b([BLne/v;)Lne/b0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final a(Laf/f;Lne/v;J)Lne/b0;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lne/b0$b$a;

    .line 7
    .line 8
    invoke-direct {v0, p2, p3, p4, p1}, Lne/b0$b$a;-><init>(Lne/v;JLaf/f;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final b([BLne/v;)Lne/b0;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Laf/d;

    .line 7
    .line 8
    invoke-direct {v0}, Laf/d;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Laf/d;->U0([B)Laf/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length p1, p1

    .line 16
    int-to-long v1, p1

    .line 17
    invoke-virtual {p0, v0, p2, v1, v2}, Lne/b0$b;->a(Laf/f;Lne/v;J)Lne/b0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
