.class public final Lse/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lne/u;


# static fields
.field public static final a:Lse/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lse/a;

    invoke-direct {v0}, Lse/a;-><init>()V

    sput-object v0, Lse/a;->a:Lse/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lne/u$a;)Lne/a0;
    .locals 10

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lte/g;

    .line 7
    .line 8
    invoke-virtual {p1}, Lte/g;->e()Lse/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lse/e;->p(Lte/g;)Lse/c;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/16 v8, 0x3d

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    move-object v1, p1

    .line 25
    invoke-static/range {v1 .. v9}, Lte/g;->d(Lte/g;ILse/c;Lne/y;IIIILjava/lang/Object;)Lte/g;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lte/g;->i()Lne/y;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lte/g;->a(Lne/y;)Lne/a0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method
