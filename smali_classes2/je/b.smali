.class public abstract Lje/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lje/b$a;
    }
.end annotation


# static fields
.field public static final d:Lje/b$a;


# instance fields
.field private final a:Lje/d;

.field private final b:Lle/b;

.field private final c:Lke/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lje/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lje/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lje/b;->d:Lje/b$a;

    return-void
.end method

.method private constructor <init>(Lje/d;Lle/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lje/b;->a:Lje/d;

    .line 4
    iput-object p2, p0, Lje/b;->b:Lle/b;

    .line 5
    new-instance p1, Lke/k;

    invoke-direct {p1}, Lke/k;-><init>()V

    iput-object p1, p0, Lje/b;->c:Lke/k;

    return-void
.end method

.method public synthetic constructor <init>(Lje/d;Lle/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lje/b;-><init>(Lje/d;Lle/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lee/a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "deserializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "string"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p2}, Lke/a0;->a(Lje/b;Ljava/lang/String;)Lke/z;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance v0, Lke/x;

    .line 16
    .line 17
    sget-object v3, Lke/d0;->c:Lke/d0;

    .line 18
    .line 19
    invoke-interface {p1}, Lee/a;->a()Lge/d;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v1, v0

    .line 25
    move-object v2, p0

    .line 26
    move-object v4, p2

    .line 27
    invoke-direct/range {v1 .. v6}, Lke/x;-><init>(Lje/b;Lke/d0;Lke/a;Lge/d;Lke/x$a;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lke/x;->g(Lee/a;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2}, Lke/a;->t()V

    .line 35
    .line 36
    .line 37
    return-object p1
.end method

.method public final b(Lee/e;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "serializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lke/v;

    .line 7
    .line 8
    invoke-direct {v0}, Lke/v;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lke/u;->a(Lje/b;Lke/l;Lee/e;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lke/v;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v0}, Lke/v;->h()V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v0}, Lke/v;->h()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final c()Lje/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lje/b;->a:Lje/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lle/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lje/b;->b:Lle/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lke/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lje/b;->c:Lke/k;

    .line 2
    .line 3
    return-object v0
.end method
