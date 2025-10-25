.class public final Lj0/w$a;
.super Lj0/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lid/Function2;

.field private final b:Ltd/v;

.field private final c:Lj0/i0;

.field private final d:Lad/i;


# direct methods
.method public constructor <init>(Lid/Function2;Ltd/v;Lj0/i0;Lad/i;)V
    .locals 1

    .line 1
    const-string v0, "transform"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ack"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callerContext"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lj0/w;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lj0/w$a;->a:Lid/Function2;

    .line 21
    .line 22
    iput-object p2, p0, Lj0/w$a;->b:Ltd/v;

    .line 23
    .line 24
    iput-object p3, p0, Lj0/w$a;->c:Lj0/i0;

    .line 25
    .line 26
    iput-object p4, p0, Lj0/w$a;->d:Lad/i;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()Ltd/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/w$a;->b:Ltd/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lad/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/w$a;->d:Lad/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lj0/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/w$a;->c:Lj0/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lid/Function2;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/w$a;->a:Lid/Function2;

    .line 2
    .line 3
    return-object v0
.end method
