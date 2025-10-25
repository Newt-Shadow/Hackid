.class public final Lk0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/e;


# instance fields
.field private final a:Lid/l;


# direct methods
.method public constructor <init>(Lid/l;)V
    .locals 1

    .line 1
    const-string v0, "produceNewData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lk0/b;->a:Lid/l;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lj0/d;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lk0/b;->a:Lid/l;

    .line 2
    .line 3
    invoke-interface {p2, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
