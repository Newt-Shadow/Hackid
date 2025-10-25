.class public final synthetic Lrd/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/l;


# instance fields
.field public final synthetic a:Lrd/k$a;


# direct methods
.method public synthetic constructor <init>(Lrd/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrd/j;->a:Lrd/k$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lrd/j;->a:Lrd/k$a;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lrd/k$a;->m(Lrd/k$a;I)Lrd/g;

    move-result-object p1

    return-object p1
.end method
