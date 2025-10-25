.class public abstract Lv1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv1/a$a;
    }
.end annotation


# static fields
.field public static final a:Lv1/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv1/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv1/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lv1/a;->a:Lv1/a$a;

    return-void
.end method
