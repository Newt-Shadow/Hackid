.class public final Lqd/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/e;


# instance fields
.field private final a:Lqd/e;

.field private final b:Lid/l;


# direct methods
.method public constructor <init>(Lqd/e;Lid/l;)V
    .locals 1

    .line 1
    const-string v0, "sequence"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "transformer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lqd/m;->a:Lqd/e;

    .line 15
    .line 16
    iput-object p2, p0, Lqd/m;->b:Lid/l;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic b(Lqd/m;)Lqd/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lqd/m;->a:Lqd/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lqd/m;)Lid/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lqd/m;->b:Lid/l;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lqd/m$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lqd/m$a;-><init>(Lqd/m;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
