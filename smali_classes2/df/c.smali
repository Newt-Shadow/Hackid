.class public final synthetic Ldf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Ldf/d;


# direct methods
.method public synthetic constructor <init>(Ldf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/c;->a:Ldf/d;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ldf/c;->a:Ldf/d;

    invoke-static {v0, p1}, Ldf/d;->f(Ldf/d;I)I

    move-result p1

    return p1
.end method
