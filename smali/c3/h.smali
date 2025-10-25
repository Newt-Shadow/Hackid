.class public final synthetic Lc3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc3/n1;


# direct methods
.method public synthetic constructor <init>(Lc3/n1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/h;->a:Lc3/n1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/h;->a:Lc3/n1;

    invoke-static {v0}, Lc3/n1;->O(Lc3/n1;)V

    return-void
.end method
