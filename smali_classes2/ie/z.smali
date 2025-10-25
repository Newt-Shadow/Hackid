.class public final Lie/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/b;


# static fields
.field public static final a:Lie/z;

.field private static final b:Lge/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lie/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lie/z;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lie/z;->a:Lie/z;

    .line 7
    .line 8
    new-instance v0, Lie/w;

    .line 9
    .line 10
    const-string v1, "kotlin.String"

    .line 11
    .line 12
    sget-object v2, Lge/c$e;->a:Lge/c$e;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lie/w;-><init>(Ljava/lang/String;Lge/c;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lie/z;->b:Lge/d;

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
    sget-object v0, Lie/z;->b:Lge/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic c(Lhe/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lie/z;->f(Lhe/e;)Ljava/lang/String;

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
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lie/z;->g(Lhe/f;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lhe/e;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "decoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lhe/e;->i()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public g(Lhe/f;Ljava/lang/String;)V
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
    invoke-interface {p1, p2}, Lhe/f;->r(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
