.class public final synthetic Lhb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc/d;


# instance fields
.field public final synthetic a:Lhb/l;


# direct methods
.method public synthetic constructor <init>(Lhb/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhb/f;->a:Lhb/l;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/f;->a:Lhb/l;

    invoke-static {v0, p1, p2}, Lhb/l;->f(Lhb/l;Landroid/view/View;Z)V

    return-void
.end method
