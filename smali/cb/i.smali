.class public final synthetic Lcb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcb/j;


# direct methods
.method public synthetic constructor <init>(Lcb/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb/i;->a:Lcb/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcb/i;->a:Lcb/j;

    invoke-static {v0}, Lcb/j;->a(Lcb/j;)V

    return-void
.end method
