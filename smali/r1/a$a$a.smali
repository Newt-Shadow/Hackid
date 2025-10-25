.class final Lr1/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr1/a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc0/a;


# direct methods
.method constructor <init>(Lc0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/a$a$a;->a:Lc0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lr1/a$a$a;->a:Lc0/a;

    .line 2
    .line 3
    invoke-interface {p2, p1}, Lc0/a;->accept(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p1
.end method
