.class public final Lqd/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqd/l;->f(Lqd/e;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqd/e;


# direct methods
.method public constructor <init>(Lqd/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqd/l$a;->a:Lqd/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lqd/l$a;->a:Lqd/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lqd/e;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
