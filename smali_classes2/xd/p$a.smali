.class final synthetic Lxd/p$a;
.super Lkotlin/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxd/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final a:Lxd/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxd/p$a;

    invoke-direct {v0}, Lxd/p$a;-><init>()V

    sput-object v0, Lxd/p$a;->a:Lxd/p$a;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x3

    const-class v2, Lwd/e;

    const-string v3, "emit"

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/k;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lwd/e;

    .line 2
    .line 3
    check-cast p3, Lad/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lxd/p$a;->f(Lwd/e;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final f(Lwd/e;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Lwd/e;->emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
