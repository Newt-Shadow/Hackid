.class public final Lie/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/b;


# static fields
.field public static final a:Lie/b;

.field private static final b:Lge/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lie/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lie/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lie/b;->a:Lie/b;

    .line 7
    .line 8
    new-instance v0, Lie/w;

    .line 9
    .line 10
    const-string v1, "kotlin.Boolean"

    .line 11
    .line 12
    sget-object v2, Lge/c$a;->a:Lge/c$a;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lie/w;-><init>(Ljava/lang/String;Lge/c;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lie/b;->b:Lge/d;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lge/d;
    .locals 1

    .line 1
    sget-object v0, Lie/b;->b:Lge/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic c(Lhe/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lie/b;->f(Lhe/e;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(Lhe/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p1, p2}, Lie/b;->g(Lhe/f;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(Lhe/e;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "decoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lhe/e;->d()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public g(Lhe/f;Z)V
    .locals 1

    .line 1
    const-string v0, "encoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Lhe/f;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
