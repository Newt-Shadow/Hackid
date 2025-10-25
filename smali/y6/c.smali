.class public Ly6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls6/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ly6/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ly6/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ly6/c;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Ly6/c;

    .line 14
    .line 15
    invoke-direct {v0}, Ly6/c;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Ly6/c;->b:Ly6/c;

    .line 19
    .line 20
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic d()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Ly6/c;->a:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static e()V
    .locals 1

    .line 1
    sget-object v0, Ly6/c;->b:Ly6/c;

    .line 2
    .line 3
    invoke-static {v0}, Ls6/x;->n(Ls6/w;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ls6/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic b(Ls6/v;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ly6/c;->f(Ls6/v;)Ls6/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ls6/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Ls6/v;)Ls6/e;
    .locals 1

    .line 1
    new-instance v0, Ly6/c$a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ly6/c$a;-><init>(Ls6/v;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
