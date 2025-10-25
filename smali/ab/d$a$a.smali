.class public final Lab/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lab/d$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lab/d$a;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v4, "image"

    .line 8
    .line 9
    invoke-static {p1, v4, v3, v1, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ne v4, v2, :cond_0

    .line 14
    .line 15
    move v4, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v4, v3

    .line 18
    :goto_0
    if-eqz v4, :cond_1

    .line 19
    .line 20
    sget-object p1, Lab/d$a;->c:Lab/d$a;

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const-string v4, "video"

    .line 26
    .line 27
    invoke-static {p1, v4, v3, v1, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ne v4, v2, :cond_2

    .line 32
    .line 33
    move v4, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v4, v3

    .line 36
    :goto_1
    if-eqz v4, :cond_3

    .line 37
    .line 38
    sget-object p1, Lab/d$a;->d:Lab/d$a;

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    if-eqz p1, :cond_4

    .line 42
    .line 43
    const-string v4, "text"

    .line 44
    .line 45
    invoke-static {p1, v4, v3, v1, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-ne p1, v2, :cond_4

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    move v2, v3

    .line 53
    :goto_2
    if-eqz v2, :cond_5

    .line 54
    .line 55
    sget-object p1, Lab/d$a;->e:Lab/d$a;

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_5
    sget-object p1, Lab/d$a;->f:Lab/d$a;

    .line 59
    .line 60
    :goto_3
    return-object p1
.end method
