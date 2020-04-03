.class final synthetic Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl2;
.super Ljava/lang/Object;
.source "SQLiteQueryBuilder.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl2"
.end annotation


# instance fields
.field private synthetic val$this:Landroid/database/sqlite/SQLiteQueryBuilder;


# direct methods
.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl2;->val$this:Landroid/database/sqlite/SQLiteQueryBuilder;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl2;->val$this:Landroid/database/sqlite/SQLiteQueryBuilder;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->-android_database_sqlite_SQLiteQueryBuilder-mthref-2(Ljava/lang/String;)V

    return-void
.end method
