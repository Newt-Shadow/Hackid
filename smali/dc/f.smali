.class public final Ldc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/f$a;
    }
.end annotation


# static fields
.field private static volatile c:Ldc/f;

.field public static final d:Ldc/f$a;


# instance fields
.field private final a:Lxc/d;

.field private final b:Ldc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldc/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ldc/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ldc/f;->d:Ldc/f$a;

    .line 8
    .line 9
    new-instance v0, Ldc/f;

    .line 10
    .line 11
    invoke-direct {v0}, Ldc/f;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ldc/f;->c:Ldc/f;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldc/f$b;->e:Ldc/f$b;

    .line 5
    .line 6
    invoke-static {v0}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Ldc/f;->a:Lxc/d;

    .line 11
    .line 12
    new-instance v0, Ldc/a;

    .line 13
    .line 14
    invoke-direct {v0}, Ldc/a;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ldc/f;->b:Ldc/a;

    .line 18
    .line 19
    return-void
.end method

.method public static final c()Ldc/f;
    .locals 1

    .line 1
    sget-object v0, Ldc/f;->c:Ldc/f;

    return-object v0
.end method


# virtual methods
.method public final a()Ldc/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/f;->b:Ldc/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ldc/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/f;->a:Lxc/d;

    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc/b;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/f;->b:Ldc/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldc/a;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Ldc/e;)V
    .locals 1

    .line 1
    const-string v0, "configuration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ldc/f;->b()Ldc/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ldc/b;->c(Ldc/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
