.class public final synthetic Lu8/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lie/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu8/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final a:Lu8/v$a;

.field private static final descriptor:Lge/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lu8/v$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lu8/v$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu8/v$a;->a:Lu8/v$a;

    .line 7
    .line 8
    new-instance v1, Lie/t;

    .line 9
    .line 10
    const-string v2, "com.google.firebase.sessions.ProcessData"

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lie/t;-><init>(Ljava/lang/String;Lie/f;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "pid"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Lie/t;->p(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "uuid"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lie/t;->p(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lu8/v$a;->descriptor:Lge/d;

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lge/d;
    .locals 1

    .line 1
    sget-object v0, Lu8/v$a;->descriptor:Lge/d;

    return-object v0
.end method

.method public b()[Lee/b;
    .locals 1

    .line 1
    invoke-static {p0}, Lie/f$a;->a(Lie/f;)[Lee/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic c(Lhe/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu8/v$a;->f(Lhe/e;)Lu8/v;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d()[Lee/b;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lee/b;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lie/g;->a:Lie/g;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lie/z;->a:Lie/z;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic e(Lhe/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lu8/v;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lu8/v$a;->g(Lhe/f;Lu8/v;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Lhe/e;)Lu8/v;
    .locals 10

    .line 1
    const-string v0, "decoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lu8/v$a;->descriptor:Lge/d;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lhe/e;->b(Lge/d;)Lhe/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Lhe/c;->o()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, v0, v3}, Lhe/c;->m(Lge/d;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {p1, v0, v2}, Lhe/c;->p(Lge/d;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v7, v2

    .line 32
    move v1, v3

    .line 33
    move v6, v1

    .line 34
    move-object v5, v4

    .line 35
    :goto_0
    if-eqz v7, :cond_4

    .line 36
    .line 37
    invoke-interface {p1, v0}, Lhe/c;->n(Lge/d;)I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/4 v9, -0x1

    .line 42
    if-eq v8, v9, :cond_3

    .line 43
    .line 44
    if-eqz v8, :cond_2

    .line 45
    .line 46
    if-ne v8, v2, :cond_1

    .line 47
    .line 48
    invoke-interface {p1, v0, v2}, Lhe/c;->p(Lge/d;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    or-int/lit8 v6, v6, 0x2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance p1, Lee/f;

    .line 56
    .line 57
    invoke-direct {p1, v8}, Lee/f;-><init>(I)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    invoke-interface {p1, v0, v3}, Lhe/c;->m(Lge/d;I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    or-int/lit8 v6, v6, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move v7, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move-object v2, v5

    .line 71
    move v3, v6

    .line 72
    :goto_1
    invoke-interface {p1, v0}, Lhe/c;->a(Lge/d;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lu8/v;

    .line 76
    .line 77
    invoke-direct {p1, v3, v1, v2, v4}, Lu8/v;-><init>(IILjava/lang/String;Lie/y;)V

    .line 78
    .line 79
    .line 80
    return-object p1
.end method

.method public final g(Lhe/f;Lu8/v;)V
    .locals 1

    .line 1
    const-string v0, "encoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lu8/v$a;->descriptor:Lge/d;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lhe/f;->b(Lge/d;)Lhe/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p2, p1, v0}, Lu8/v;->c(Lu8/v;Lhe/d;Lge/d;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lhe/d;->a(Lge/d;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
