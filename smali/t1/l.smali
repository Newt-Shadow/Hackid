.class public interface abstract Lt1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/l$a;
    }
.end annotation


# static fields
.field public static final a:Lt1/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lt1/l$a;->a:Lt1/l$a;

    sput-object v0, Lt1/l;->a:Lt1/l$a;

    return-void
.end method

.method public static b()Lt1/l;
    .locals 1

    .line 1
    sget-object v0, Lt1/l;->a:Lt1/l$a;

    invoke-virtual {v0}, Lt1/l$a;->a()Lt1/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;)Lt1/k;
.end method
