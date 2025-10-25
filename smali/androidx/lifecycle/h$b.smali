.class public final Landroidx/lifecycle/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/h;->c(Lh1/d;Landroidx/lifecycle/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/i;

.field final synthetic b:Lh1/d;


# direct methods
.method constructor <init>(Landroidx/lifecycle/i;Lh1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/i;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/lifecycle/h$b;->b:Lh1/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/m;Landroidx/lifecycle/i$a;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Landroidx/lifecycle/i$a;->ON_START:Landroidx/lifecycle/i$a;

    .line 12
    .line 13
    if-ne p2, p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/lifecycle/h$b;->a:Landroidx/lifecycle/i;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/l;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/lifecycle/h$b;->b:Lh1/d;

    .line 21
    .line 22
    const-class p2, Landroidx/lifecycle/h$a;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lh1/d;->i(Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
